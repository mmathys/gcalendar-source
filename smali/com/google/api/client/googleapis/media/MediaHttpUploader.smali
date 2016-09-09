.class public final Lcom/google/api/client/googleapis/media/MediaHttpUploader;
.super Ljava/lang/Object;
.source "MediaHttpUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;
    }
.end annotation


# instance fields
.field private cachedByte:Ljava/lang/Byte;

.field private chunkSize:I

.field private contentInputStream:Ljava/io/InputStream;

.field private currentChunkLength:I

.field private currentRequest:Lcom/google/api/client/http/HttpRequest;

.field private currentRequestContentBuffer:[B

.field private directUploadEnabled:Z

.field private disableGZipContent:Z

.field private initiationHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private initiationRequestMethod:Ljava/lang/String;

.field private isMediaContentLengthCalculated:Z

.field private final mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

.field private mediaContentLength:J

.field mediaContentLengthStr:Ljava/lang/String;

.field private metadata:Lcom/google/api/client/http/HttpContent;

.field private progressListener:Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;

.field private final requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

.field private totalBytesClientSent:J

.field private totalBytesServerReceived:J

.field private uploadState:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;


# direct methods
.method private directUpload(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->MEDIA_IN_PROGRESS:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V

    .line 348
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 349
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->metadata:Lcom/google/api/client/http/HttpContent;

    if-eqz v1, :cond_1

    .line 350
    new-instance v0, Lcom/google/api/client/http/MultipartContent;

    invoke-direct {v0}, Lcom/google/api/client/http/MultipartContent;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/api/client/http/HttpContent;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->metadata:Lcom/google/api/client/http/HttpContent;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/MultipartContent;->setContentParts(Ljava/util/Collection;)Lcom/google/api/client/http/MultipartContent;

    move-result-object v0

    .line 351
    const-string v1, "uploadType"

    const-string v2, "multipart"

    invoke-virtual {p1, v1, v2}, Lcom/google/api/client/http/GenericUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :goto_0
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationRequestMethod:Ljava/lang/String;

    .line 356
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/HttpHeaders;->putAll(Ljava/util/Map;)V

    .line 360
    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->executeCurrentRequest(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 363
    :try_start_0
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->isMediaLengthKnown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    .line 366
    :cond_0
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->MEDIA_COMPLETE:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    return-object v1

    .line 353
    :cond_1
    const-string v1, "uploadType"

    const-string v2, "media"

    invoke-virtual {p1, v1, v2}, Lcom/google/api/client/http/GenericUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 369
    :catchall_0
    move-exception v0

    .line 370
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    throw v0
.end method

.method private executeCurrentRequest(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->disableGZipContent:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getContent()Lcom/google/api/client/http/HttpContent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/api/client/http/EmptyContent;

    if-nez v0, :cond_0

    .line 559
    new-instance v0, Lcom/google/api/client/http/GZipEncoding;

    invoke-direct {v0}, Lcom/google/api/client/http/GZipEncoding;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setEncoding(Lcom/google/api/client/http/HttpEncoding;)Lcom/google/api/client/http/HttpRequest;

    .line 562
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->executeCurrentRequestWithoutGZip(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 563
    return-object v0
.end method

.method private executeCurrentRequestWithoutGZip(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    new-instance v0, Lcom/google/api/client/googleapis/MethodOverride;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/MethodOverride;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/MethodOverride;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 543
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;

    .line 545
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 546
    return-object v0
.end method

.method private executeUploadInitiation(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->INITIATION_STARTED:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V

    .line 510
    const-string v0, "uploadType"

    const-string v1, "resumable"

    invoke-virtual {p1, v0, v1}, Lcom/google/api/client/http/GenericUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->metadata:Lcom/google/api/client/http/HttpContent;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/api/client/http/EmptyContent;

    invoke-direct {v0}, Lcom/google/api/client/http/EmptyContent;-><init>()V

    .line 512
    :goto_0
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationRequestMethod:Ljava/lang/String;

    .line 513
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/http/HttpHeaders;

    const-string v2, "X-Upload-Content-Type"

    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    invoke-virtual {v3}, Lcom/google/api/client/http/AbstractInputStreamContent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 515
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->isMediaLengthKnown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/http/HttpHeaders;

    const-string v2, "X-Upload-Content-Length"

    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 518
    :cond_0
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/HttpHeaders;->putAll(Ljava/util/Map;)V

    .line 519
    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->executeCurrentRequest(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 523
    :try_start_0
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->INITIATION_COMPLETE:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    return-object v1

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->metadata:Lcom/google/api/client/http/HttpContent;

    goto :goto_0

    .line 526
    :catchall_0
    move-exception v0

    .line 527
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    throw v0
.end method

.method private getMediaContentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->isMediaContentLengthCalculated:Z

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    invoke-virtual {v0}, Lcom/google/api/client/http/AbstractInputStreamContent;->getLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLength:J

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->isMediaContentLengthCalculated:Z

    .line 499
    :cond_0
    iget-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLength:J

    return-wide v0
.end method

.method private getNextByteIndex(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 695
    if-nez p1, :cond_0

    .line 696
    const-wide/16 v0, 0x0

    .line 698
    :goto_0
    return-wide v0

    :cond_0
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method private isMediaLengthKnown()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resumableUpload(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->executeUploadInitiation(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 385
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-object v1

    .line 391
    :cond_1
    :try_start_0
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 393
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 397
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    invoke-virtual {v1}, Lcom/google/api/client/http/AbstractInputStreamContent;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    .line 398
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->isMediaLengthKnown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    .line 408
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/api/client/http/HttpRequestFactory;->buildPutRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    .line 409
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->setContentAndHeadersOnCurrentRequest()V

    .line 412
    new-instance v1, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-direct {v1, p0, v2}, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;-><init>(Lcom/google/api/client/googleapis/media/MediaHttpUploader;Lcom/google/api/client/http/HttpRequest;)V

    .line 414
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->isMediaLengthKnown()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 417
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-direct {p0, v1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->executeCurrentRequestWithoutGZip(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 423
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 424
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    .line 425
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    invoke-virtual {v0}, Lcom/google/api/client/http/AbstractInputStreamContent;->getCloseInputStream()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 426
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 428
    :cond_3
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->MEDIA_COMPLETE:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 473
    :catchall_0
    move-exception v0

    .line 474
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    throw v0

    .line 393
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    throw v0

    .line 419
    :cond_4
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-direct {p0, v1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->executeCurrentRequest(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    goto :goto_2

    .line 433
    :cond_5
    :try_start_2
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0x134

    if-ne v2, v3, :cond_0

    .line 439
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v2

    .line 440
    if-eqz v2, :cond_6

    .line 441
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v0, v2}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 446
    :cond_6
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpHeaders;->getRange()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getNextByteIndex(Ljava/lang/String;)J

    move-result-wide v4

    .line 448
    iget-wide v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    sub-long v6, v4, v2

    .line 449
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-ltz v2, :cond_8

    iget v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentChunkLength:I

    int-to-long v2, v2

    cmp-long v2, v6, v2

    if-gtz v2, :cond_8

    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Lcom/google/api/client/util/Preconditions;->checkState(Z)V

    .line 451
    iget v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentChunkLength:I

    int-to-long v2, v2

    sub-long/2addr v2, v6

    .line 452
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->isMediaLengthKnown()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 453
    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-lez v2, :cond_7

    .line 459
    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 460
    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-virtual {v2, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 461
    cmp-long v2, v6, v2

    if-nez v2, :cond_9

    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Lcom/google/api/client/util/Preconditions;->checkState(Z)V

    .line 469
    :cond_7
    :goto_5
    iput-wide v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    .line 471
    sget-object v2, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->MEDIA_IN_PROGRESS:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v2}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 474
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    goto/16 :goto_1

    .line 449
    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    .line 461
    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    .line 463
    :cond_a
    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_7

    .line 467
    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequestContentBuffer:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5
.end method

.method private setContentAndHeadersOnCurrentRequest()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 572
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->isMediaLengthKnown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    iget v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->chunkSize:I

    int-to-long v0, v0

    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    sub-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 582
    :goto_0
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->isMediaLengthKnown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 586
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    int-to-long v4, v0

    invoke-static {v1, v4, v5}, Lcom/google/api/client/util/ByteStreams;->limit(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v1

    .line 587
    new-instance v3, Lcom/google/api/client/http/InputStreamContent;

    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 588
    invoke-virtual {v4}, Lcom/google/api/client/http/AbstractInputStreamContent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/google/api/client/http/InputStreamContent;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lcom/google/api/client/http/InputStreamContent;->setRetrySupported(Z)Lcom/google/api/client/http/InputStreamContent;

    move-result-object v1

    int-to-long v4, v0

    .line 589
    invoke-virtual {v1, v4, v5}, Lcom/google/api/client/http/InputStreamContent;->setLength(J)Lcom/google/api/client/http/InputStreamContent;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/InputStreamContent;->setCloseInputStream(Z)Lcom/google/api/client/http/InputStreamContent;

    move-result-object v1

    .line 590
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLengthStr:Ljava/lang/String;

    .line 654
    :goto_1
    iput v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentChunkLength:I

    .line 655
    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v2, v1}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 656
    if-nez v0, :cond_9

    .line 660
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    const-string v2, "bytes */"

    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLengthStr:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/google/api/client/http/HttpHeaders;->setContentRange(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 665
    :goto_3
    return-void

    .line 577
    :cond_0
    iget v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->chunkSize:I

    goto :goto_0

    .line 601
    :cond_1
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequestContentBuffer:[B

    if-nez v1, :cond_5

    .line 602
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cachedByte:Ljava/lang/Byte;

    if-nez v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    .line 603
    :goto_4
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequestContentBuffer:[B

    .line 604
    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cachedByte:Ljava/lang/Byte;

    if-eqz v3, :cond_a

    .line 605
    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequestContentBuffer:[B

    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cachedByte:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v3, v2

    move v3, v1

    move v1, v2

    .line 629
    :goto_5
    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequestContentBuffer:[B

    add-int/lit8 v6, v0, 0x1

    sub-int/2addr v6, v3

    invoke-static {v4, v5, v6, v3}, Lcom/google/api/client/util/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v4

    .line 633
    if-ge v4, v3, :cond_7

    .line 634
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v1

    .line 635
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cachedByte:Ljava/lang/Byte;

    if-eqz v1, :cond_2

    .line 636
    add-int/lit8 v0, v0, 0x1

    .line 637
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cachedByte:Ljava/lang/Byte;

    .line 640
    :cond_2
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLengthStr:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 643
    iget-wide v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLengthStr:Ljava/lang/String;

    .line 649
    :cond_3
    :goto_6
    new-instance v1, Lcom/google/api/client/http/ByteArrayContent;

    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 650
    invoke-virtual {v3}, Lcom/google/api/client/http/AbstractInputStreamContent;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequestContentBuffer:[B

    invoke-direct {v1, v3, v4, v2, v0}, Lcom/google/api/client/http/ByteArrayContent;-><init>(Ljava/lang/String;[BII)V

    .line 651
    iget-wide v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesClientSent:J

    goto/16 :goto_1

    :cond_4
    move v1, v0

    .line 602
    goto :goto_4

    .line 616
    :cond_5
    iget-wide v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesClientSent:J

    iget-wide v6, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 619
    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequestContentBuffer:[B

    iget v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentChunkLength:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequestContentBuffer:[B

    invoke-static {v3, v4, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 621
    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cachedByte:Ljava/lang/Byte;

    if-eqz v3, :cond_6

    .line 623
    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequestContentBuffer:[B

    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cachedByte:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v3, v1

    .line 626
    :cond_6
    sub-int v3, v0, v1

    goto :goto_5

    .line 646
    :cond_7
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequestContentBuffer:[B

    aget-byte v1, v1, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cachedByte:Ljava/lang/Byte;

    goto :goto_6

    .line 660
    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 662
    :cond_9
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    iget-wide v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLengthStr:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x30

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "bytes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/HttpHeaders;->setContentRange(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    goto/16 :goto_3

    :cond_a
    move v3, v1

    move v1, v2

    goto/16 :goto_5
.end method

.method private updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 907
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->uploadState:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    .line 908
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->progressListener:Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->progressListener:Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;

    invoke-interface {v0, p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;->progressChanged(Lcom/google/api/client/googleapis/media/MediaHttpUploader;)V

    .line 911
    :cond_0
    return-void
.end method


# virtual methods
.method serverErrorCallback()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    const-string v1, "The current request should not be null"

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    new-instance v1, Lcom/google/api/client/http/EmptyContent;

    invoke-direct {v1}, Lcom/google/api/client/http/EmptyContent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 683
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    const-string v2, "bytes */"

    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLengthStr:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/api/client/http/HttpHeaders;->setContentRange(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 684
    return-void

    .line 683
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDisableGZipContent(Z)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .locals 0

    .prologue
    .line 826
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->disableGZipContent:Z

    .line 827
    return-object p0
.end method

.method public setInitiationHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 883
    return-object p0
.end method

.method public upload(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->uploadState:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    sget-object v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->NOT_STARTED:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 333
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->directUploadEnabled:Z

    if-eqz v0, :cond_1

    .line 334
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->directUpload(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 336
    :goto_1
    return-object v0

    .line 331
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 336
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->resumableUpload(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    goto :goto_1
.end method
