.class public Lio/grpc/ClientInterceptors;
.super Ljava/lang/Object;
.source "ClientInterceptors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/ClientInterceptors$CheckedForwardingClientCall;,
        Lio/grpc/ClientInterceptors$InterceptorChannel;
    }
.end annotation


# static fields
.field private static final NOOP_CALL:Lio/grpc/ClientCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lio/grpc/ClientInterceptors$1;

    invoke-direct {v0}, Lio/grpc/ClientInterceptors$1;-><init>()V

    sput-object v0, Lio/grpc/ClientInterceptors;->NOOP_CALL:Lio/grpc/ClientCall;

    return-void
.end method

.method static synthetic access$100()Lio/grpc/ClientCall;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lio/grpc/ClientInterceptors;->NOOP_CALL:Lio/grpc/ClientCall;

    return-object v0
.end method

.method public static intercept(Lio/grpc/Channel;Ljava/util/List;)Lio/grpc/Channel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Channel;",
            "Ljava/util/List",
            "<+",
            "Lio/grpc/ClientInterceptor;",
            ">;)",
            "Lio/grpc/Channel;"
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ClientInterceptor;

    .line 103
    new-instance v1, Lio/grpc/ClientInterceptors$InterceptorChannel;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v3}, Lio/grpc/ClientInterceptors$InterceptorChannel;-><init>(Lio/grpc/Channel;Lio/grpc/ClientInterceptor;Lio/grpc/ClientInterceptors$1;)V

    move-object p0, v1

    .line 104
    goto :goto_0

    .line 105
    :cond_0
    return-object p0
.end method

.method public static varargs intercept(Lio/grpc/Channel;[Lio/grpc/ClientInterceptor;)Lio/grpc/Channel;
    .locals 1

    .prologue
    .line 88
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lio/grpc/ClientInterceptors;->intercept(Lio/grpc/Channel;Ljava/util/List;)Lio/grpc/Channel;

    move-result-object v0

    return-object v0
.end method
