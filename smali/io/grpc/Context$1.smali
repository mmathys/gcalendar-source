.class final Lio/grpc/Context$1;
.super Ljava/lang/ThreadLocal;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lio/grpc/Context;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lio/grpc/Context;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lio/grpc/Context$1;->initialValue()Lio/grpc/Context;

    move-result-object v0

    return-object v0
.end method
