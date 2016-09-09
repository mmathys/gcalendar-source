.class public Lcom/android/calendar/newapi/view/HeadlineTileView;
.super Lcom/android/calendar/newapi/view/TileView;
.source "HeadlineTileView.java"


# instance fields
.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/view/TileView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/newapi/view/TileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected applyAttributes(Landroid/content/res/TypedArray;)V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/view/TileView;->applyAttributes(Landroid/content/res/TypedArray;)V

    .line 41
    sget v0, Lcom/android/calendar/R$styleable;->TileView_tile_text:I

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/newapi/view/HeadlineTileView;->getStringFromAttribute(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/view/HeadlineTileView;->setText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/HeadlineTileView;

    .line 42
    return-void
.end method

.method protected onContentViewSet(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/view/TileView;->onContentViewSet(Landroid/view/View;)V

    .line 57
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/calendar/newapi/view/HeadlineTileView;->mText:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/android/calendar/newapi/view/HeadlineTileView;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/HeadlineTileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    invoke-static {p0}, Lcom/android/calendar/AccessibilityUtils;->setImportantForAccessibility(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/HeadlineTileView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/newapi/view/HeadlineTileView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-object p0
.end method

.method protected setupView()V
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/android/calendar/R$layout;->newapi_tile_content_headerline:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/view/HeadlineTileView;->setContentView(I)Lcom/android/calendar/newapi/view/TileView;

    .line 33
    return-void
.end method
