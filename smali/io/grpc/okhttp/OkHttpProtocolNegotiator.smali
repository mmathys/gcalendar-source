.class Lio/grpc/okhttp/OkHttpProtocolNegotiator;
.super Ljava/lang/Object;
.source "OkHttpProtocolNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;
    }
.end annotation


# static fields
.field private static final DEFAULT_PLATFORM:Lio/grpc/okhttp/internal/Platform;

.field private static NEGOTIATOR:Lio/grpc/okhttp/OkHttpProtocolNegotiator;


# instance fields
.field private final platform:Lio/grpc/okhttp/internal/Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lio/grpc/okhttp/internal/Platform;->get()Lio/grpc/okhttp/internal/Platform;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->DEFAULT_PLATFORM:Lio/grpc/okhttp/internal/Platform;

    .line 57
    const-class v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->createNegotiator(Ljava/lang/ClassLoader;)Lio/grpc/okhttp/OkHttpProtocolNegotiator;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->NEGOTIATOR:Lio/grpc/okhttp/OkHttpProtocolNegotiator;

    .line 57
    return-void
.end method

.method constructor <init>(Lio/grpc/okhttp/internal/Platform;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/internal/Platform;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->platform:Lio/grpc/okhttp/internal/Platform;

    .line 65
    return-void
.end method

.method static createNegotiator(Ljava/lang/ClassLoader;)Lio/grpc/okhttp/OkHttpProtocolNegotiator;
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x1

    .line 79
    :try_start_0
    const-string v1, "com.android.org.conscrypt.OpenSSLSocketImpl"

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;

    sget-object v1, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->DEFAULT_PLATFORM:Lio/grpc/okhttp/internal/Platform;

    # getter for: Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->DEFAULT_TLS_EXTENSION_TYPE:Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;
    invoke-static {}, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;->access$000()Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator;-><init>(Lio/grpc/okhttp/internal/Platform;Lio/grpc/okhttp/OkHttpProtocolNegotiator$AndroidNegotiator$TlsExtensionType;)V

    .line 88
    :goto_1
    return-object v0

    .line 80
    :catch_0
    move-exception v1

    .line 83
    :try_start_1
    const-string v1, "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl"

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    .line 85
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_0
    new-instance v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator;

    sget-object v1, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->DEFAULT_PLATFORM:Lio/grpc/okhttp/internal/Platform;

    invoke-direct {v0, v1}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;-><init>(Lio/grpc/okhttp/internal/Platform;)V

    goto :goto_1
.end method

.method public static get()Lio/grpc/okhttp/OkHttpProtocolNegotiator;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->NEGOTIATOR:Lio/grpc/okhttp/OkHttpProtocolNegotiator;

    return-object v0
.end method


# virtual methods
.method protected configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lio/grpc/okhttp/internal/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->platform:Lio/grpc/okhttp/internal/Platform;

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/okhttp/internal/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 122
    return-void
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->platform:Lio/grpc/okhttp/internal/Platform;

    invoke-virtual {v0, p1}, Lio/grpc/okhttp/internal/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public negotiate(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lio/grpc/okhttp/internal/Protocol;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    if-eqz p3, :cond_0

    .line 102
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 106
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 108
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    .line 109
    if-nez v0, :cond_1

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "protocol negotiation failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->platform:Lio/grpc/okhttp/internal/Platform;

    invoke-virtual {v1, p1}, Lio/grpc/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpProtocolNegotiator;->platform:Lio/grpc/okhttp/internal/Platform;

    invoke-virtual {v1, p1}, Lio/grpc/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 112
    return-object v0
.end method
