.class Lio/grpc/okhttp/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static convertHeaders(Ljava/util/List;)Lio/grpc/Metadata;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)",
            "Lio/grpc/Metadata;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lio/grpc/Metadata;

    invoke-static {p0}, Lio/grpc/okhttp/Utils;->convertHeadersToArray(Ljava/util/List;)[[B

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/Metadata;-><init>([[B)V

    return-object v0
.end method

.method private static convertHeadersToArray(Ljava/util/List;)[[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)[[B"
        }
    .end annotation

    .prologue
    .line 60
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [[B

    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/internal/framed/Header;

    .line 63
    add-int/lit8 v4, v1, 0x1

    iget-object v5, v0, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->toByteArray()[B

    move-result-object v5

    aput-object v5, v2, v1

    .line 64
    add-int/lit8 v1, v4, 0x1

    iget-object v0, v0, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->toByteArray()[B

    move-result-object v0

    aput-object v0, v2, v4

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {v2}, Lio/grpc/internal/TransportFrameUtil;->toRawSerializedHeaders([[B)[[B

    move-result-object v0

    return-object v0
.end method

.method static convertSpec(Lcom/squareup/okhttp/ConnectionSpec;)Lio/grpc/okhttp/internal/ConnectionSpec;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/squareup/okhttp/ConnectionSpec;->isTls()Z

    move-result v0

    const-string v1, "plaintext ConnectionSpec is not accepted"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions()Ljava/util/List;

    move-result-object v3

    .line 80
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    move v1, v2

    .line 81
    :goto_0
    array-length v0, v4

    if-ge v1, v0, :cond_0

    .line 82
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/TlsVersion;

    invoke-virtual {v0}, Lcom/squareup/okhttp/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 81
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites()Ljava/util/List;

    move-result-object v1

    .line 86
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Lio/grpc/okhttp/internal/CipherSuite;

    .line 87
    :goto_1
    array-length v0, v3

    if-ge v2, v0, :cond_1

    .line 88
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/CipherSuite;

    invoke-virtual {v0}, Lcom/squareup/okhttp/CipherSuite;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/okhttp/internal/CipherSuite;->valueOf(Ljava/lang/String;)Lio/grpc/okhttp/internal/CipherSuite;

    move-result-object v0

    aput-object v0, v3, v2

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    :cond_1
    new-instance v0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    invoke-virtual {p0}, Lcom/squareup/okhttp/ConnectionSpec;->isTls()Z

    move-result v1

    invoke-direct {v0, v1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;-><init>(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/squareup/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v4}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v3}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->cipherSuites([Lio/grpc/okhttp/internal/CipherSuite;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->build()Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object v0

    .line 91
    return-object v0
.end method

.method public static convertTrailers(Ljava/util/List;)Lio/grpc/Metadata;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)",
            "Lio/grpc/Metadata;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lio/grpc/Metadata;

    invoke-static {p0}, Lio/grpc/okhttp/Utils;->convertHeadersToArray(Ljava/util/List;)[[B

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/Metadata;-><init>([[B)V

    return-object v0
.end method
