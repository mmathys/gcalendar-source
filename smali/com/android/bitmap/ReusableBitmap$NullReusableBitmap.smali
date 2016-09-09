.class public final Lcom/android/bitmap/ReusableBitmap$NullReusableBitmap;
.super Lcom/android/bitmap/ReusableBitmap;
.source "ReusableBitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bitmap/ReusableBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NullReusableBitmap"
.end annotation


# static fields
.field private static sInstance:Lcom/android/bitmap/ReusableBitmap$NullReusableBitmap;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/bitmap/ReusableBitmap;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 138
    return-void
.end method

.method public static getInstance()Lcom/android/bitmap/ReusableBitmap$NullReusableBitmap;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/android/bitmap/ReusableBitmap$NullReusableBitmap;->sInstance:Lcom/android/bitmap/ReusableBitmap$NullReusableBitmap;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/android/bitmap/ReusableBitmap$NullReusableBitmap;

    invoke-direct {v0}, Lcom/android/bitmap/ReusableBitmap$NullReusableBitmap;-><init>()V

    sput-object v0, Lcom/android/bitmap/ReusableBitmap$NullReusableBitmap;->sInstance:Lcom/android/bitmap/ReusableBitmap$NullReusableBitmap;

    .line 133
    :cond_0
    sget-object v0, Lcom/android/bitmap/ReusableBitmap$NullReusableBitmap;->sInstance:Lcom/android/bitmap/ReusableBitmap$NullReusableBitmap;

    return-object v0
.end method


# virtual methods
.method public acquireReference()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public getByteCount()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public releaseReference()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method
