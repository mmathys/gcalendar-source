.class final Lio/grpc/ManagedChannelProvider$1;
.super Ljava/lang/Object;
.source "ManagedChannelProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/ManagedChannelProvider;->load(Ljava/lang/ClassLoader;)Lio/grpc/ManagedChannelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lio/grpc/ManagedChannelProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lio/grpc/ManagedChannelProvider;Lio/grpc/ManagedChannelProvider;)I
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p1}, Lio/grpc/ManagedChannelProvider;->priority()I

    move-result v0

    invoke-virtual {p2}, Lio/grpc/ManagedChannelProvider;->priority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 118
    check-cast p1, Lio/grpc/ManagedChannelProvider;

    check-cast p2, Lio/grpc/ManagedChannelProvider;

    invoke-virtual {p0, p1, p2}, Lio/grpc/ManagedChannelProvider$1;->compare(Lio/grpc/ManagedChannelProvider;Lio/grpc/ManagedChannelProvider;)I

    move-result v0

    return v0
.end method
