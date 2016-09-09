.class Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;
.super Ljava/lang/Object;
.source "GoogleHttpClient.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/SocketFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/http/GoogleHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedSocketFactory"
.end annotation


# instance fields
.field private mDelegate:Lorg/apache/http/conn/scheme/SocketFactory;

.field final synthetic this$0:Lcom/google/android/common/http/GoogleHttpClient;


# direct methods
.method private constructor <init>(Lcom/google/android/common/http/GoogleHttpClient;Lorg/apache/http/conn/scheme/SocketFactory;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;->this$0:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p2, p0, Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;->mDelegate:Lorg/apache/http/conn/scheme/SocketFactory;

    .line 141
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/common/http/GoogleHttpClient;Lorg/apache/http/conn/scheme/SocketFactory;Lcom/google/android/common/http/GoogleHttpClient$1;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;-><init>(Lcom/google/android/common/http/GoogleHttpClient;Lorg/apache/http/conn/scheme/SocketFactory;)V

    return-void
.end method


# virtual methods
.method public final connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;->this$0:Lcom/google/android/common/http/GoogleHttpClient;

    # getter for: Lcom/google/android/common/http/GoogleHttpClient;->mConnectionAllocated:Ljava/lang/ThreadLocal;
    invoke-static {v0}, Lcom/google/android/common/http/GoogleHttpClient;->access$200(Lcom/google/android/common/http/GoogleHttpClient;)Ljava/lang/ThreadLocal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;->mDelegate:Lorg/apache/http/conn/scheme/SocketFactory;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;->mDelegate:Lorg/apache/http/conn/scheme/SocketFactory;

    invoke-interface {v0}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;->mDelegate:Lorg/apache/http/conn/scheme/SocketFactory;

    invoke-interface {v0, p1}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method
