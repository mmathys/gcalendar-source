.class Lcom/android/calendar/groove/GrooveCategorySelectionFragment$5;
.super Ljava/lang/Object;
.source "GrooveCategorySelectionFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->createCategoryView(I)Lcom/android/calendar/groove/GrooveCategoryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

.field final synthetic val$category:Lcom/android/calendar/groove/GrooveCategories$Category;

.field final synthetic val$categoryView:Lcom/android/calendar/groove/GrooveCategoryView;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveCategorySelectionFragment;Lcom/android/calendar/groove/GrooveCategories$Category;Lcom/android/calendar/groove/GrooveCategoryView;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$5;->this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    iput-object p2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$5;->val$category:Lcom/android/calendar/groove/GrooveCategories$Category;

    iput-object p3, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$5;->val$categoryView:Lcom/android/calendar/groove/GrooveCategoryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$5;->this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 294
    # getter for: Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mIsTablet:Z
    invoke-static {}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    div-int/lit8 v0, v0, 0x2

    .line 302
    :cond_0
    int-to-float v1, v0

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41100000    # 9.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 304
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$5;->this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    .line 305
    invoke-virtual {v2}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$5;->this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    .line 306
    invoke-virtual {v3}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$5;->val$category:Lcom/android/calendar/groove/GrooveCategories$Category;

    iget v4, v4, Lcom/android/calendar/groove/GrooveCategories$Category;->backgroundDrawableResId:I

    invoke-static {v3, v4, v0, v1}, Lcom/android/calendar/groove/GrooveUtils;->decodeScaledBitmapFromResource(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 304
    invoke-static {v2, v0}, Lcom/android/calendar/Utils;->getRtlAdjustedImage(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 309
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$5;->this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    invoke-virtual {v2}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 311
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$5;->this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    invoke-virtual {v2}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$color;->default_ripple:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 317
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$5;->val$categoryView:Lcom/android/calendar/groove/GrooveCategoryView;

    invoke-virtual {v1, v0}, Lcom/android/calendar/groove/GrooveCategoryView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 318
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$5;->val$categoryView:Lcom/android/calendar/groove/GrooveCategoryView;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveCategoryView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 319
    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, v1

    .line 315
    goto :goto_0
.end method
