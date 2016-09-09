.class Lcom/android/calendar/groove/GrooveScheduleFragment$4;
.super Ljava/lang/Object;
.source "GrooveScheduleFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveScheduleFragment;->initializeImageBackground(Z)V
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
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

.field final synthetic val$animateFromCategoryPage:Z

.field final synthetic val$category:Lcom/android/calendar/groove/GrooveCategories$Category;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveScheduleFragment;ZLcom/android/calendar/groove/GrooveCategories$Category;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    iput-boolean p2, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->val$animateFromCategoryPage:Z

    iput-object p3, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->val$category:Lcom/android/calendar/groove/GrooveCategories$Category;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 405
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/calendar/Utils;->getRtlAdjustedImage(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;
    invoke-static {v1}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$400(Lcom/android/calendar/groove/GrooveScheduleFragment;)Lcom/android/calendar/timely/ListenableBitmapDrawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 408
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 407
    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->setDecodeDimensions(II)V

    .line 409
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;
    invoke-static {v1}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$400(Lcom/android/calendar/groove/GrooveScheduleFragment;)Lcom/android/calendar/timely/ListenableBitmapDrawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 410
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 409
    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->setBounds(IIII)V

    .line 411
    new-instance v1, Lcom/android/bitmap/ReusableBitmap;

    invoke-direct {v1, v0}, Lcom/android/bitmap/ReusableBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 412
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/bitmap/ReusableBitmap;->setLogicalHeight(I)V

    .line 413
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/bitmap/ReusableBitmap;->setLogicalWidth(I)V

    .line 414
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;
    invoke-static {v2}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$400(Lcom/android/calendar/groove/GrooveScheduleFragment;)Lcom/android/calendar/timely/ListenableBitmapDrawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->setBitmap(Lcom/android/bitmap/ReusableBitmap;)V

    .line 415
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    .line 416
    iget-boolean v2, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->val$animateFromCategoryPage:Z

    if-eqz v2, :cond_0

    .line 417
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundFrame:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$900(Lcom/android/calendar/groove/GrooveScheduleFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->val$category:Lcom/android/calendar/groove/GrooveCategories$Category;

    iget v3, v3, Lcom/android/calendar/groove/GrooveCategories$Category;->backgroundColor:I

    iget-object v4, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    .line 418
    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundImage:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$1000(Lcom/android/calendar/groove/GrooveScheduleFragment;)Landroid/widget/ImageView;

    move-result-object v4

    .line 417
    # invokes: Lcom/android/calendar/groove/GrooveScheduleFragment;->startBackgroundTransitionAnimation(Landroid/view/View;IILandroid/view/View;)V
    invoke-static {v2, v3, v1, v4}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$1100(Landroid/view/View;IILandroid/view/View;)V

    .line 425
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # invokes: Lcom/android/calendar/groove/GrooveScheduleFragment;->matchColorThemeToBackgroundColor(I)V
    invoke-static {v2, v1}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$1200(Lcom/android/calendar/groove/GrooveScheduleFragment;I)V

    .line 426
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$1000(Lcom/android/calendar/groove/GrooveScheduleFragment;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;
    invoke-static {v3}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$400(Lcom/android/calendar/groove/GrooveScheduleFragment;)Lcom/android/calendar/timely/ListenableBitmapDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$1000(Lcom/android/calendar/groove/GrooveScheduleFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 428
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$1000(Lcom/android/calendar/groove/GrooveScheduleFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    .line 430
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mSummaryView:Lcom/android/calendar/groove/GrooveSummaryView;
    invoke-static {v2}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$300(Lcom/android/calendar/groove/GrooveScheduleFragment;)Lcom/android/calendar/groove/GrooveSummaryView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # invokes: Lcom/android/calendar/groove/GrooveScheduleFragment;->getFabColor(Landroid/graphics/Bitmap;I)I
    invoke-static {v3, v0, v1}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$1300(Lcom/android/calendar/groove/GrooveScheduleFragment;Landroid/graphics/Bitmap;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/calendar/groove/GrooveSummaryView;->setFabColor(I)V

    .line 431
    return-void

    .line 420
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundFrame:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$900(Lcom/android/calendar/groove/GrooveScheduleFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 421
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$1000(Lcom/android/calendar/groove/GrooveScheduleFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 422
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;
    invoke-static {v2}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$400(Lcom/android/calendar/groove/GrooveScheduleFragment;)Lcom/android/calendar/timely/ListenableBitmapDrawable;

    move-result-object v2

    const v3, 0x3f79999a    # 0.975f

    invoke-virtual {v2, v3}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->setParallaxFraction(F)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 402
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/GrooveScheduleFragment$4;->onResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method
