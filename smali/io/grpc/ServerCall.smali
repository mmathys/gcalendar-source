.class public abstract Lio/grpc/ServerCall;
.super Ljava/lang/Object;
.source "ServerCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/ServerCall$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final REMOTE_ADDR_KEY:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key",
            "<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final SSL_SESSION_KEY:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key",
            "<",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "remote-addr"

    .line 62
    invoke-static {v0}, Lio/grpc/Attributes$Key;->of(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/ServerCall;->REMOTE_ADDR_KEY:Lio/grpc/Attributes$Key;

    .line 68
    const-string v0, "ssl-session"

    .line 69
    invoke-static {v0}, Lio/grpc/Attributes$Key;->of(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/ServerCall;->SSL_SESSION_KEY:Lio/grpc/Attributes$Key;

    .line 68
    return-void
.end method
