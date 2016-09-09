.class public Lio/grpc/okhttp/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final CONTENT_TYPE_HEADER:Lio/grpc/okhttp/internal/framed/Header;

.field public static final METHOD_HEADER:Lio/grpc/okhttp/internal/framed/Header;

.field public static final SCHEME_HEADER:Lio/grpc/okhttp/internal/framed/Header;

.field public static final TE_HEADER:Lio/grpc/okhttp/internal/framed/Header;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v1, Lio/grpc/okhttp/internal/framed/Header;->TARGET_SCHEME:Lokio/ByteString;

    const-string v2, "https"

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/okhttp/Headers;->SCHEME_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    .line 55
    new-instance v0, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v1, Lio/grpc/okhttp/internal/framed/Header;->TARGET_METHOD:Lokio/ByteString;

    const-string v2, "POST"

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/okhttp/Headers;->METHOD_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    .line 56
    new-instance v0, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v1, Lio/grpc/internal/GrpcUtil;->CONTENT_TYPE_KEY:Lio/grpc/Metadata$Key;

    .line 57
    invoke-virtual {v1}, Lio/grpc/Metadata$Key;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/grpc"

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/okhttp/Headers;->CONTENT_TYPE_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    .line 58
    new-instance v0, Lio/grpc/okhttp/internal/framed/Header;

    const-string v1, "te"

    const-string v2, "trailers"

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/okhttp/Headers;->TE_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    return-void
.end method

.method public static createRequestHeaders(Lio/grpc/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Metadata;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    const-string v0, "headers"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "defaultPath"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v0, "authority"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lio/grpc/Metadata;->headerCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    sget-object v0, Lio/grpc/okhttp/Headers;->SCHEME_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lio/grpc/okhttp/Headers;->METHOD_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v2, Lio/grpc/okhttp/internal/framed/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    invoke-direct {v0, v2, p2}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v2, Lio/grpc/okhttp/internal/framed/Header;->TARGET_PATH:Lokio/ByteString;

    invoke-direct {v0, v2, p1}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v0, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v2, Lio/grpc/internal/GrpcUtil;->USER_AGENT_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v2}, Lio/grpc/Metadata$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p3}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lio/grpc/okhttp/Headers;->CONTENT_TYPE_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lio/grpc/okhttp/Headers;->TE_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-static {p0}, Lio/grpc/internal/TransportFrameUtil;->toHttp2Headers(Lio/grpc/Metadata;)[[B

    move-result-object v2

    .line 90
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 91
    aget-object v3, v2, v0

    invoke-static {v3}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-static {v4}, Lio/grpc/okhttp/Headers;->isApplicationHeader(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    add-int/lit8 v4, v0, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v4

    .line 95
    new-instance v5, Lio/grpc/okhttp/internal/framed/Header;

    invoke-direct {v5, v3, v4}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 99
    :cond_1
    return-object v1
.end method

.method private static isApplicationHeader(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 108
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/grpc/internal/GrpcUtil;->CONTENT_TYPE_KEY:Lio/grpc/Metadata$Key;

    .line 109
    invoke-virtual {v0}, Lio/grpc/Metadata$Key;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/grpc/internal/GrpcUtil;->USER_AGENT_KEY:Lio/grpc/Metadata$Key;

    .line 110
    invoke-virtual {v0}, Lio/grpc/Metadata$Key;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
