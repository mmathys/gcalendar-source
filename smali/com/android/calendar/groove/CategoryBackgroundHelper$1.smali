.class Lcom/android/calendar/groove/CategoryBackgroundHelper$1;
.super Ljava/lang/Object;
.source "CategoryBackgroundHelper.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/CategoryBackgroundHelper;->requestBackgroundImage(Landroid/app/Activity;ILandroid/view/View;Lcom/android/calendar/groove/CategoryBackgroundHelper$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/CategoryBackgroundHelper;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$backgroundDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;

.field final synthetic val$listener:Lcom/android/calendar/groove/CategoryBackgroundHelper$Listener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/CategoryBackgroundHelper;Landroid/app/Activity;Lcom/android/calendar/timely/ListenableBitmapDrawable;Lcom/android/calendar/groove/CategoryBackgroundHelper$Listener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/calendar/groove/CategoryBackgroundHelper$1;->this$0:Lcom/android/calendar/groove/CategoryBackgroundHelper;

    iput-object p2, p0, Lcom/android/calendar/groove/CategoryBackgroundHelper$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/calendar/groove/CategoryBackgroundHelper$1;->val$backgroundDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;

    iput-object p4, p0, Lcom/android/calendar/groove/CategoryBackgroundHelper$1;->val$listener:Lcom/android/calendar/groove/CategoryBackgroundHelper$Listener;

    iput-object p5, p0, Lcom/android/calendar/groove/CategoryBackgroundHelper$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 68
    iget-object v0, p0, Lcom/android/calendar/groove/CategoryBackgroundHelper$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/android/calendar/Utils;->getRtlAdjustedImage(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/android/calendar/groove/CategoryBackgroundHelper$1;->val$backgroundDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 69
    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->setDecodeDimensions(II)V

    .line 71
    iget-object v1, p0, Lcom/android/calendar/groove/CategoryBackgroundHelper$1;->val$backgroundDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->setBounds(IIII)V

    .line 72
    new-instance v1, Lcom/android/bitmap/ReusableBitmap;

    invoke-direct {v1, v0}, Lcom/android/bitmap/ReusableBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/bitmap/ReusableBitmap;->setLogicalHeight(I)V

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/bitmap/ReusableBitmap;->setLogicalWidth(I)V

    .line 75
    iget-object v2, p0, Lcom/android/calendar/groove/CategoryBackgroundHelper$1;->val$backgroundDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;

    invoke-virtual {v2, v1}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->setBitmap(Lcom/android/bitmap/ReusableBitmap;)V

    .line 76
    iget-object v1, p0, Lcom/android/calendar/groove/CategoryBackgroundHelper$1;->val$listener:Lcom/android/calendar/groove/CategoryBackgroundHelper$Listener;

    iget-object v2, p0, Lcom/android/calendar/groove/CategoryBackgroundHelper$1;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/android/calendar/groove/CategoryBackgroundHelper$1;->val$backgroundDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/calendar/groove/CategoryBackgroundHelper$Listener;->onBackgroundDrawableFetchComplete(Landroid/view/View;Lcom/android/calendar/timely/ListenableBitmapDrawable;Landroid/graphics/Bitmap;)V

    .line 78
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 66
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/CategoryBackgroundHelper$1;->onResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method
