---
title: HTTPRequest — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_httprequest.html
crawled_at: "2026-08-13T10:31:10+12:00"
content_hash: a8fcd2ca53435791368933abec02e8c160dc099210b785d3813ad3c60d33e5df
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - HTTPRequest

* * *

# HTTPRequest

**Inherits:** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

A node with the ability to send HTTP(S) requests.

## Description

A node with the ability to send HTTP requests. Uses [HTTPClient](class_httpclient.md#class-httpclient) internally.

Can be used to make HTTP requests, i.e. download or upload files or web content via HTTP.

**Warning:** See the notes and warnings on [HTTPClient](class_httpclient.md#class-httpclient) for limitations, especially regarding TLS security.

**Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

**Example:** Contact a REST API and print one of its returned fields:

GDScriptC#

```
func _ready():
    # Create an HTTP request node and connect its completion signal.
    var http_request = HTTPRequest.new()
    add_child(http_request)
    http_request.request_completed.connect(self._http_request_completed)

    # Perform a GET request. The URL below returns JSON as of writing.
    var error = http_request.request("https://httpbin.org/get")
    if error != OK:
        push_error("An error occurred in the HTTP request.")

    # Perform a POST request. The URL below returns JSON as of writing.
    # Note: Don't make simultaneous requests using a single HTTPRequest node.
    # The snippet below is provided for reference only.
    var body = JSON.new().stringify({"name": "Godette"})
    error = http_request.request("https://httpbin.org/post", [], HTTPClient.METHOD_POST, body)
    if error != OK:
        push_error("An error occurred in the HTTP request.")

# Called when the HTTP request is completed.
func _http_request_completed(result, response_code, headers, body):
    var json = JSON.new()
    json.parse(body.get_string_from_utf8())
    var response = json.get_data()

    # Will print the user agent string used by the HTTPRequest node (as recognized by httpbin.org).
    print(response.headers["User-Agent"])

```

```
public override void _Ready()
{
    // Create an HTTP request node and connect its completion signal.
    var httpRequest = new HttpRequest();
    AddChild(httpRequest);
    httpRequest.RequestCompleted += HttpRequestCompleted;

    // Perform a GET request. The URL below returns JSON as of writing.
    Error error = httpRequest.Request("https://httpbin.org/get");
    if (error != Error.Ok)
    {
        GD.PushError("An error occurred in the HTTP request.");
    }

    // Perform a POST request. The URL below returns JSON as of writing.
    // Note: Don't make simultaneous requests using a single HTTPRequest node.
    // The snippet below is provided for reference only.
    string body = new Json().Stringify(new Godot.Collections.Dictionary
    {
        { "name", "Godette" }
    });
    error = httpRequest.Request("https://httpbin.org/post", null, HttpClient.Method.Post, body);
    if (error != Error.Ok)
    {
        GD.PushError("An error occurred in the HTTP request.");
    }
}

// Called when the HTTP request is completed.
private void HttpRequestCompleted(long result, long responseCode, string[] headers, byte[] body)
{
    var json = new Json();
    json.Parse(body.GetStringFromUtf8());
    var response = json.GetData().AsGodotDictionary();

    // Will print the user agent string used by the HTTPRequest node (as recognized by httpbin.org).
    GD.Print((response["headers"].AsGodotDictionary())["User-Agent"]);
}

```

**Example:** Load an image using **HTTPRequest** and display it:

GDScriptC#

```
func _ready():
    # Create an HTTP request node and connect its completion signal.
    var http_request = HTTPRequest.new()
    add_child(http_request)
    http_request.request_completed.connect(self._http_request_completed)

    # Perform the HTTP request. The URL below returns a PNG image as of writing.
    var error = http_request.request("https://placehold.co/512.png")
    if error != OK:
        push_error("An error occurred in the HTTP request.")

# Called when the HTTP request is completed.
func _http_request_completed(result, response_code, headers, body):
    if result != HTTPRequest.RESULT_SUCCESS:
        push_error("Image couldn't be downloaded. Try a different image.")

    var image = Image.new()
    var error = image.load_png_from_buffer(body)
    if error != OK:
        push_error("Couldn't load the image.")

    var texture = ImageTexture.create_from_image(image)

    # Display the image in a TextureRect node.
    var texture_rect = TextureRect.new()
    add_child(texture_rect)
    texture_rect.texture = texture

```

```
public override void _Ready()
{
    // Create an HTTP request node and connect its completion signal.
    var httpRequest = new HttpRequest();
    AddChild(httpRequest);
    httpRequest.RequestCompleted += HttpRequestCompleted;

    // Perform the HTTP request. The URL below returns a PNG image as of writing.
    Error error = httpRequest.Request("https://placehold.co/512.png");
    if (error != Error.Ok)
    {
        GD.PushError("An error occurred in the HTTP request.");
    }
}

// Called when the HTTP request is completed.
private void HttpRequestCompleted(long result, long responseCode, string[] headers, byte[] body)
{
    if (result != (long)HttpRequest.Result.Success)
    {
        GD.PushError("Image couldn't be downloaded. Try a different image.");
    }
    var image = new Image();
    Error error = image.LoadPngFromBuffer(body);
    if (error != Error.Ok)
    {
        GD.PushError("Couldn't load the image.");
    }

    var texture = ImageTexture.CreateFromImage(image);

    // Display the image in a TextureRect node.
    var textureRect = new TextureRect();
    AddChild(textureRect);
    textureRect.Texture = texture;
}

```

**Note:** **HTTPRequest** nodes will automatically handle decompression of response bodies. An `Accept-Encoding` header will be automatically added to each of your requests, unless one is already specified. Any response with a `Content-Encoding: gzip` header will automatically be decompressed and delivered to you as uncompressed bytes.

## Tutorials

- [Making HTTP requests](../tutorials/networking/http_request_class.md)

- [TLS certificates](../tutorials/networking/ssl_certificates.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [accept\_gzip](#class-httprequest-property-accept-gzip) | `true` |
| [int](class_int.md#class-int) | [body\_size\_limit](#class-httprequest-property-body-size-limit) | `-1` |
| [int](class_int.md#class-int) | [download\_chunk\_size](#class-httprequest-property-download-chunk-size) | `65536` |
| [String](class_string.md#class-string) | [download\_file](#class-httprequest-property-download-file) | `""` |
| [int](class_int.md#class-int) | [max\_redirects](#class-httprequest-property-max-redirects) | `8` |
| [float](class_float.md#class-float) | [timeout](#class-httprequest-property-timeout) | `0.0` |
| [bool](class_bool.md#class-bool) | [use\_threads](#class-httprequest-property-use-threads) | `false` |

## Methods

|     |     |
| --- | --- |
| void | [cancel\_request](#class-httprequest-method-cancel-request)() |
| [int](class_int.md#class-int) | [get\_body\_size](#class-httprequest-method-get-body-size)() const |
| [int](class_int.md#class-int) | [get\_downloaded\_bytes](#class-httprequest-method-get-downloaded-bytes)() const |
| [Status](class_httpclient.md#enum-httpclient-status) | [get\_http\_client\_status](#class-httprequest-method-get-http-client-status)() const |
| [Error](class_@globalscope.md#enum-globalscope-error) | [request](#class-httprequest-method-request)(url: [String](class_string.md#class-string), custom\_headers: [PackedStringArray](class_packedstringarray.md#class-packedstringarray) = PackedStringArray(), method: [Method](class_httpclient.md#enum-httpclient-method) = 0, request\_data: [String](class_string.md#class-string) = "") |
| [Error](class_@globalscope.md#enum-globalscope-error) | [request\_raw](#class-httprequest-method-request-raw)(url: [String](class_string.md#class-string), custom\_headers: [PackedStringArray](class_packedstringarray.md#class-packedstringarray) = PackedStringArray(), method: [Method](class_httpclient.md#enum-httpclient-method) = 0, request\_data\_raw: [PackedByteArray](class_packedbytearray.md#class-packedbytearray) = PackedByteArray()) |
| void | [set\_http\_proxy](#class-httprequest-method-set-http-proxy)(host: [String](class_string.md#class-string), port: [int](class_int.md#class-int)) |
| void | [set\_https\_proxy](#class-httprequest-method-set-https-proxy)(host: [String](class_string.md#class-string), port: [int](class_int.md#class-int)) |
| void | [set\_tls\_options](#class-httprequest-method-set-tls-options)(client\_options: [TLSOptions](class_tlsoptions.md#class-tlsoptions)) |

* * *

## Signals

**request\_completed**(result: [int](class_int.md#class-int), response\_code: [int](class_int.md#class-int), headers: [PackedStringArray](class_packedstringarray.md#class-packedstringarray), body: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-httprequest-signal-request-completed)

Emitted when a request is completed.

* * *

## Enumerations

enum **Result**: [🔗](#enum-httprequest-result)

[Result](#enum-httprequest-result) **RESULT\_SUCCESS** = `0`

Request successful.

[Result](#enum-httprequest-result) **RESULT\_CHUNKED\_BODY\_SIZE\_MISMATCH** = `1`

Request failed due to a mismatch between the expected and actual chunked body size during transfer. Possible causes include network errors, server misconfiguration, or issues with chunked encoding.

[Result](#enum-httprequest-result) **RESULT\_CANT\_CONNECT** = `2`

Request failed while connecting.

[Result](#enum-httprequest-result) **RESULT\_CANT\_RESOLVE** = `3`

Request failed while resolving.

[Result](#enum-httprequest-result) **RESULT\_CONNECTION\_ERROR** = `4`

Request failed due to connection (read/write) error.

[Result](#enum-httprequest-result) **RESULT\_TLS\_HANDSHAKE\_ERROR** = `5`

Request failed on TLS handshake.

[Result](#enum-httprequest-result) **RESULT\_NO\_RESPONSE** = `6`

Request does not have a response (yet).

[Result](#enum-httprequest-result) **RESULT\_BODY\_SIZE\_LIMIT\_EXCEEDED** = `7`

Request exceeded its maximum size limit, see [body\_size\_limit](#class-httprequest-property-body-size-limit).

[Result](#enum-httprequest-result) **RESULT\_BODY\_DECOMPRESS\_FAILED** = `8`

Request failed due to an error while decompressing the response body. Possible causes include unsupported or incorrect compression format, corrupted data, or incomplete transfer.

[Result](#enum-httprequest-result) **RESULT\_REQUEST\_FAILED** = `9`

Request failed (currently unused).

[Result](#enum-httprequest-result) **RESULT\_DOWNLOAD\_FILE\_CANT\_OPEN** = `10`

HTTPRequest couldn't open the download file.

[Result](#enum-httprequest-result) **RESULT\_DOWNLOAD\_FILE\_WRITE\_ERROR** = `11`

HTTPRequest couldn't write to the download file.

[Result](#enum-httprequest-result) **RESULT\_REDIRECT\_LIMIT\_REACHED** = `12`

Request reached its maximum redirect limit, see [max\_redirects](#class-httprequest-property-max-redirects).

[Result](#enum-httprequest-result) **RESULT\_TIMEOUT** = `13`

Request failed due to a timeout. If you expect requests to take a long time, try increasing the value of [timeout](#class-httprequest-property-timeout) or setting it to `0.0` to remove the timeout completely.

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **accept\_gzip** = `true` [🔗](#class-httprequest-property-accept-gzip)

- void **set\_accept\_gzip**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_accepting\_gzip**()


If `true`, this header will be added to each request: `Accept-Encoding: gzip, deflate` telling servers that it's okay to compress response bodies.

Any Response body declaring a `Content-Encoding` of either `gzip` or `deflate` will then be automatically decompressed, and the uncompressed bytes will be delivered via [request\_completed](#class-httprequest-signal-request-completed).

If the user has specified their own `Accept-Encoding` header, then no header will be added regardless of [accept\_gzip](#class-httprequest-property-accept-gzip).

If `false` no header will be added, and no decompression will be performed on response bodies. The raw bytes of the response body will be returned via [request\_completed](#class-httprequest-signal-request-completed).

* * *

[int](class_int.md#class-int) **body\_size\_limit** = `-1` [🔗](#class-httprequest-property-body-size-limit)

- void **set\_body\_size\_limit**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_body\_size\_limit**()


Maximum allowed size for response bodies. If the response body is compressed, this will be used as the maximum allowed size for the decompressed body.

* * *

[int](class_int.md#class-int) **download\_chunk\_size** = `65536` [🔗](#class-httprequest-property-download-chunk-size)

- void **set\_download\_chunk\_size**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_download\_chunk\_size**()


The size of the buffer used and maximum bytes to read per iteration. See [HTTPClient.read\_chunk\_size](class_httpclient.md#class-httpclient-property-read-chunk-size).

Set this to a lower value (e.g. 4096 for 4 KiB) when downloading small files to decrease memory usage at the cost of download speeds.

* * *

[String](class_string.md#class-string) **download\_file** = `""` [🔗](#class-httprequest-property-download-file)

- void **set\_download\_file**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_download\_file**()


The file to download into. Will output any received file into it.

* * *

[int](class_int.md#class-int) **max\_redirects** = `8` [🔗](#class-httprequest-property-max-redirects)

- void **set\_max\_redirects**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_max\_redirects**()


Maximum number of allowed redirects.

* * *

[float](class_float.md#class-float) **timeout** = `0.0` [🔗](#class-httprequest-property-timeout)

- void **set\_timeout**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_timeout**()


The duration to wait in seconds before a request times out. If [timeout](#class-httprequest-property-timeout) is set to `0.0` then the request will never time out. For simple requests, such as communication with a REST API, it is recommended that [timeout](#class-httprequest-property-timeout) is set to a value suitable for the server response time (e.g. between `1.0` and `10.0`). This will help prevent unwanted timeouts caused by variation in server response times while still allowing the application to detect when a request has timed out. For larger requests such as file downloads it is suggested the [timeout](#class-httprequest-property-timeout) be set to `0.0`, disabling the timeout functionality. This will help to prevent large transfers from failing due to exceeding the timeout value.

* * *

[bool](class_bool.md#class-bool) **use\_threads** = `false` [🔗](#class-httprequest-property-use-threads)

- void **set\_use\_threads**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_using\_threads**()


If `true`, multithreading is used to improve performance.

* * *

## Method Descriptions

void **cancel\_request**() [🔗](#class-httprequest-method-cancel-request)

Cancels the current request.

* * *

[int](class_int.md#class-int) **get\_body\_size**() const [🔗](#class-httprequest-method-get-body-size)

Returns the response body length.

**Note:** Some Web servers may not send a body length. In this case, the value returned will be `-1`. If using chunked transfer encoding, the body length will also be `-1`.

* * *

[int](class_int.md#class-int) **get\_downloaded\_bytes**() const [🔗](#class-httprequest-method-get-downloaded-bytes)

Returns the number of bytes this HTTPRequest downloaded.

* * *

[Status](class_httpclient.md#enum-httpclient-status) **get\_http\_client\_status**() const [🔗](#class-httprequest-method-get-http-client-status)

Returns the current status of the underlying [HTTPClient](class_httpclient.md#class-httpclient).

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **request**(url: [String](class_string.md#class-string), custom\_headers: [PackedStringArray](class_packedstringarray.md#class-packedstringarray) = PackedStringArray(), method: [Method](class_httpclient.md#enum-httpclient-method) = 0, request\_data: [String](class_string.md#class-string) = "") [🔗](#class-httprequest-method-request)

Creates request on the underlying [HTTPClient](class_httpclient.md#class-httpclient). If there is no configuration errors, it tries to connect using [HTTPClient.connect\_to\_host()](class_httpclient.md#class-httpclient-method-connect-to-host) and passes parameters onto [HTTPClient.request()](class_httpclient.md#class-httpclient-method-request).

Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) if request is successfully created. (Does not imply that the server has responded), [@GlobalScope.ERR\_UNCONFIGURED](class_@globalscope.md#class-globalscope-constant-err-unconfigured) if not in the tree, [@GlobalScope.ERR\_BUSY](class_@globalscope.md#class-globalscope-constant-err-busy) if still processing previous request, [@GlobalScope.ERR\_INVALID\_PARAMETER](class_@globalscope.md#class-globalscope-constant-err-invalid-parameter) if given string is not a valid URL format, or [@GlobalScope.ERR\_CANT\_CONNECT](class_@globalscope.md#class-globalscope-constant-err-cant-connect) if not using thread and the [HTTPClient](class_httpclient.md#class-httpclient) cannot connect to host.

**Note:** When `method` is [HTTPClient.METHOD\_GET](class_httpclient.md#class-httpclient-constant-method-get), the payload sent via `request_data` might be ignored by the server or even cause the server to reject the request (check [RFC 7231 section 4.3.1](https://datatracker.ietf.org/doc/html/rfc7231#section-4.3.1) for more details). As a workaround, you can send data as a query string in the URL (see [String.uri\_encode()](class_string.md#class-string-method-uri-encode) for an example).

**Note:** It's recommended to use transport encryption (TLS) and to avoid sending sensitive information (such as login credentials) in HTTP GET URL parameters. Consider using HTTP POST requests or HTTP headers for such information instead.

* * *

[Error](class_@globalscope.md#enum-globalscope-error) **request\_raw**(url: [String](class_string.md#class-string), custom\_headers: [PackedStringArray](class_packedstringarray.md#class-packedstringarray) = PackedStringArray(), method: [Method](class_httpclient.md#enum-httpclient-method) = 0, request\_data\_raw: [PackedByteArray](class_packedbytearray.md#class-packedbytearray) = PackedByteArray()) [🔗](#class-httprequest-method-request-raw)

Creates request on the underlying [HTTPClient](class_httpclient.md#class-httpclient) using a raw array of bytes for the request body. If there is no configuration errors, it tries to connect using [HTTPClient.connect\_to\_host()](class_httpclient.md#class-httpclient-method-connect-to-host) and passes parameters onto [HTTPClient.request()](class_httpclient.md#class-httpclient-method-request).

Returns [@GlobalScope.OK](class_@globalscope.md#class-globalscope-constant-ok) if request is successfully created. (Does not imply that the server has responded), [@GlobalScope.ERR\_UNCONFIGURED](class_@globalscope.md#class-globalscope-constant-err-unconfigured) if not in the tree, [@GlobalScope.ERR\_BUSY](class_@globalscope.md#class-globalscope-constant-err-busy) if still processing previous request, [@GlobalScope.ERR\_INVALID\_PARAMETER](class_@globalscope.md#class-globalscope-constant-err-invalid-parameter) if given string is not a valid URL format, or [@GlobalScope.ERR\_CANT\_CONNECT](class_@globalscope.md#class-globalscope-constant-err-cant-connect) if not using thread and the [HTTPClient](class_httpclient.md#class-httpclient) cannot connect to host.

* * *

void **set\_http\_proxy**(host: [String](class_string.md#class-string), port: [int](class_int.md#class-int)) [🔗](#class-httprequest-method-set-http-proxy)

Sets the proxy server for HTTP requests.

The proxy server is unset if `host` is empty or `port` is -1.

* * *

void **set\_https\_proxy**(host: [String](class_string.md#class-string), port: [int](class_int.md#class-int)) [🔗](#class-httprequest-method-set-https-proxy)

Sets the proxy server for HTTPS requests.

The proxy server is unset if `host` is empty or `port` is -1.

* * *

void **set\_tls\_options**(client\_options: [TLSOptions](class_tlsoptions.md#class-tlsoptions)) [🔗](#class-httprequest-method-set-tls-options)

Sets the [TLSOptions](class_tlsoptions.md#class-tlsoptions) to be used when connecting to an HTTPS server. See [TLSOptions.client()](class_tlsoptions.md#class-tlsoptions-method-client).

[Previous](class_hsplitcontainer.md "HSplitContainer") [Next](class_importermeshinstance3d.md "ImporterMeshInstance3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_hsplitcontainer.md "HSplitContainer") [Next](class_importermeshinstance3d.md "ImporterMeshInstance3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).