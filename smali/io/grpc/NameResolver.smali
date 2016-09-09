.class public abstract Lio/grpc/NameResolver;
.super Ljava/lang/Object;
.source "NameResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/NameResolver$Listener;,
        Lio/grpc/NameResolver$Factory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getServiceAuthority()Ljava/lang/String;
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public abstract shutdown()V
.end method

.method public abstract start(Lio/grpc/NameResolver$Listener;)V
.end method
