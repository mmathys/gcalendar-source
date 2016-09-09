.class public Lcom/android/calendar/AccountPhotoFactory;
.super Ljava/lang/Object;
.source "AccountPhotoFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaceholder(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$drawable;->ic_no_avatar_large:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public loadAccountPhoto(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/calendar/AccountPhotoFactory;->getPlaceholder(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
