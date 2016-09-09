.class public Lcom/google/common/reflect/ClassPath$ResourceInfo;
.super Ljava/lang/Object;
.source "ClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/ClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceInfo"
.end annotation


# instance fields
.field final loader:Ljava/lang/ClassLoader;

.field private final resourceName:Ljava/lang/String;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 229
    instance-of v1, p1, Lcom/google/common/reflect/ClassPath$ResourceInfo;

    if-eqz v1, :cond_0

    .line 230
    check-cast p1, Lcom/google/common/reflect/ClassPath$ResourceInfo;

    .line 231
    iget-object v1, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->loader:Ljava/lang/ClassLoader;

    iget-object v2, p1, Lcom/google/common/reflect/ClassPath$ResourceInfo;->loader:Ljava/lang/ClassLoader;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 233
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    return-object v0
.end method
