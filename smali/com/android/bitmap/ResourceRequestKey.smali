.class public Lcom/android/bitmap/ResourceRequestKey;
.super Ljava/lang/Object;
.source "ResourceRequestKey.java"

# interfaces
.implements Lcom/android/bitmap/RequestKey;


# instance fields
.field private mResId:I

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/bitmap/ResourceRequestKey;->mResources:Landroid/content/res/Resources;

    .line 46
    iput p2, p0, Lcom/android/bitmap/ResourceRequestKey;->mResId:I

    .line 47
    return-void
.end method

.method public static from(Landroid/content/res/Resources;I)Lcom/android/bitmap/ResourceRequestKey;
    .locals 1

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    new-instance v0, Lcom/android/bitmap/ResourceRequestKey;

    invoke-direct {v0, p0, p1}, Lcom/android/bitmap/ResourceRequestKey;-><init>(Landroid/content/res/Resources;I)V

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createFileDescriptorFactoryOrByteArrayAsync(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/RequestKey$Callback;)Lcom/android/bitmap/RequestKey$Cancelable;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public createInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/bitmap/ResourceRequestKey;->mResources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/android/bitmap/ResourceRequestKey;->mResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    if-ne p0, p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 75
    goto :goto_0

    .line 78
    :cond_3
    check-cast p1, Lcom/android/bitmap/ResourceRequestKey;

    .line 80
    iget v2, p0, Lcom/android/bitmap/ResourceRequestKey;->mResId:I

    iget v3, p1, Lcom/android/bitmap/ResourceRequestKey;->mResId:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 81
    goto :goto_0
.end method

.method public hasOrientationExif()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/android/bitmap/ResourceRequestKey;->mResId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 96
    const-string v0, "ResourceRequestKey: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/bitmap/ResourceRequestKey;->mResId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
