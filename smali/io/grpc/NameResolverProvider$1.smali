.class final Lio/grpc/NameResolverProvider$1;
.super Ljava/lang/Object;
.source "NameResolverProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/NameResolverProvider;->load(Ljava/lang/ClassLoader;)Ljava/util/List;
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
        "Lio/grpc/NameResolverProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lio/grpc/NameResolverProvider;Lio/grpc/NameResolverProvider;)I
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p1}, Lio/grpc/NameResolverProvider;->priority()I

    move-result v0

    invoke-virtual {p2}, Lio/grpc/NameResolverProvider;->priority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 126
    check-cast p1, Lio/grpc/NameResolverProvider;

    check-cast p2, Lio/grpc/NameResolverProvider;

    invoke-virtual {p0, p1, p2}, Lio/grpc/NameResolverProvider$1;->compare(Lio/grpc/NameResolverProvider;Lio/grpc/NameResolverProvider;)I

    move-result v0

    return v0
.end method
