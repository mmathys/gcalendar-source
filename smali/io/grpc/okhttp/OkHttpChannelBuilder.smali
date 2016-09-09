.class public Lio/grpc/okhttp/OkHttpChannelBuilder;
.super Lio/grpc/internal/AbstractManagedChannelImplBuilder;
.source "OkHttpChannelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/AbstractManagedChannelImplBuilder",
        "<",
        "Lio/grpc/okhttp/OkHttpChannelBuilder;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CONNECTION_SPEC:Lcom/squareup/okhttp/ConnectionSpec;

.field private static final SHARED_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/SharedResourceHolder$Resource",
            "<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connectionSpec:Lcom/squareup/okhttp/ConnectionSpec;

.field private enableKeepAlive:Z

.field private keepAliveDelayNanos:J

.field private keepAliveTimeoutNanos:J

.field private maxMessageSize:I

.field private negotiationType:Lio/grpc/okhttp/NegotiationType;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private transportExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 75
    new-instance v0, Lcom/squareup/okhttp/ConnectionSpec$Builder;

    sget-object v1, Lcom/squareup/okhttp/ConnectionSpec;->MODERN_TLS:Lcom/squareup/okhttp/ConnectionSpec;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;-><init>(Lcom/squareup/okhttp/ConnectionSpec;)V

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/squareup/okhttp/CipherSuite;

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v1, v5

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lcom/squareup/okhttp/CipherSuite;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_DSS_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_GCM_SHA384:Lcom/squareup/okhttp/CipherSuite;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_DSS_WITH_AES_256_GCM_SHA384:Lcom/squareup/okhttp/CipherSuite;

    aput-object v3, v1, v2

    .line 77
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->cipherSuites([Lcom/squareup/okhttp/CipherSuite;)Lcom/squareup/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    new-array v1, v4, [Lcom/squareup/okhttp/TlsVersion;

    sget-object v2, Lcom/squareup/okhttp/TlsVersion;->TLS_1_2:Lcom/squareup/okhttp/TlsVersion;

    aput-object v2, v1, v5

    .line 87
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->tlsVersions([Lcom/squareup/okhttp/TlsVersion;)Lcom/squareup/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lcom/squareup/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->build()Lcom/squareup/okhttp/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->DEFAULT_CONNECTION_SPEC:Lcom/squareup/okhttp/ConnectionSpec;

    .line 91
    new-instance v0, Lio/grpc/okhttp/OkHttpChannelBuilder$1;

    invoke-direct {v0}, Lio/grpc/okhttp/OkHttpChannelBuilder$1;-><init>()V

    sput-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->SHARED_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->DEFAULT_CONNECTION_SPEC:Lcom/squareup/okhttp/ConnectionSpec;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->connectionSpec:Lcom/squareup/okhttp/ConnectionSpec;

    .line 121
    sget-object v0, Lio/grpc/okhttp/NegotiationType;->TLS:Lio/grpc/okhttp/NegotiationType;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/NegotiationType;

    .line 122
    const/high16 v0, 0x400000

    iput v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->maxMessageSize:I

    .line 133
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 128
    invoke-static {p1, p2}, Lio/grpc/internal/GrpcUtil;->authorityFromHostAndPort(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/okhttp/OkHttpChannelBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method static synthetic access$100()Lio/grpc/internal/SharedResourceHolder$Resource;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->SHARED_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    return-object v0
.end method

.method public static forAddress(Ljava/lang/String;I)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lio/grpc/okhttp/OkHttpChannelBuilder;

    invoke-direct {v0, p0, p1}, Lio/grpc/okhttp/OkHttpChannelBuilder;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static forTarget(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lio/grpc/okhttp/OkHttpChannelBuilder;

    invoke-direct {v0, p0}, Lio/grpc/okhttp/OkHttpChannelBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected final buildTransportFactory()Lio/grpc/internal/ClientTransportFactory;
    .locals 11

    .prologue
    .line 245
    new-instance v0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->transportExecutor:Ljava/util/concurrent/Executor;

    .line 246
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpChannelBuilder;->createSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->connectionSpec:Lcom/squareup/okhttp/ConnectionSpec;

    iget v4, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->maxMessageSize:I

    iget-boolean v5, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->enableKeepAlive:Z

    iget-wide v6, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveDelayNanos:J

    iget-wide v8, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeoutNanos:J

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;-><init>(Ljava/util/concurrent/Executor;Ljavax/net/ssl/SSLSocketFactory;Lcom/squareup/okhttp/ConnectionSpec;IZJJLio/grpc/okhttp/OkHttpChannelBuilder$1;)V

    .line 245
    return-object v0
.end method

.method createSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    .line 270
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder$2;->$SwitchMap$io$grpc$okhttp$NegotiationType:[I

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/NegotiationType;

    invoke-virtual {v1}, Lio/grpc/okhttp/NegotiationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 284
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/NegotiationType;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown negotiation type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 274
    const-string v0, "Default"

    invoke-static {}, Lio/grpc/okhttp/internal/Platform;->get()Lio/grpc/okhttp/internal/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/okhttp/internal/Platform;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 277
    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-object v0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "TLS Provider failure"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 282
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getNameResolverParams()Lio/grpc/Attributes;
    .locals 4

    .prologue
    .line 253
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder$2;->$SwitchMap$io$grpc$okhttp$NegotiationType:[I

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/NegotiationType;

    invoke-virtual {v1}, Lio/grpc/okhttp/NegotiationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 261
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/NegotiationType;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 255
    :pswitch_0
    const/16 v0, 0x50

    .line 263
    :goto_0
    invoke-static {}, Lio/grpc/Attributes;->newBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v1

    sget-object v2, Lio/grpc/NameResolver$Factory;->PARAMS_DEFAULT_PORT:Lio/grpc/Attributes$Key;

    .line 264
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v0

    .line 263
    return-object v0

    .line 258
    :pswitch_1
    const/16 v0, 0x1bb

    .line 259
    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final negotiationType(Lio/grpc/okhttp/NegotiationType;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 1

    .prologue
    .line 157
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/NegotiationType;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/NegotiationType;

    .line 158
    return-object p0
.end method

.method public final sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 1

    .prologue
    .line 195
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 196
    sget-object v0, Lio/grpc/okhttp/NegotiationType;->TLS:Lio/grpc/okhttp/NegotiationType;

    invoke-virtual {p0, v0}, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType(Lio/grpc/okhttp/NegotiationType;)Lio/grpc/okhttp/OkHttpChannelBuilder;

    .line 197
    return-object p0
.end method
