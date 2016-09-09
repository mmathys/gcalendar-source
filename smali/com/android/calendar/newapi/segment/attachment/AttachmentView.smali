.class public Lcom/android/calendar/newapi/segment/attachment/AttachmentView;
.super Landroid/widget/FrameLayout;
.source "AttachmentView.java"


# instance fields
.field private mBackground:Landroid/widget/ImageView;

.field private mFileNameView:Landroid/widget/TextView;

.field private mFileTypeView:Landroid/widget/TextView;

.field private final mIconCache:Lcom/android/bitmap/BitmapCache;

.field private final mIconHeight:I

.field private final mIconWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getAttachmentIconCache()Lcom/android/bitmap/BitmapCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->mIconCache:Lcom/android/bitmap/BitmapCache;

    .line 42
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->attachment_chip_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->mIconWidth:I

    .line 43
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->attachment_chip_icon_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->mIconHeight:I

    .line 44
    return-void
.end method

.method private getCornersDrawable(I)Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 92
    new-instance v4, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    const/4 v0, 0x4

    invoke-direct {v4, v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;-><init>(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$color;->attachment_color_chip_color_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, v4, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->backgroundColor:I

    .line 94
    const/4 v0, -0x1

    iput v0, v4, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->placeholderAnimationDuration:I

    .line 96
    new-instance v0, Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;

    .line 97
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 98
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getAttachmentChipCache()Lcom/android/bitmap/BitmapCache;

    move-result-object v2

    const/4 v3, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/calendar/R$dimen;->attachment_chip_corner_round_radius:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 102
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/calendar/R$dimen;->attachment_chip_corner_flap_side:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;FF)V

    .line 104
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$dimen;->attachment_chip_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 105
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$dimen;->attachment_chip_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;->setDecodeDimensions(II)V

    .line 106
    const/4 v1, 0x2

    invoke-virtual {v0, v8, v8, v1, v8}, Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;->setCornerStylesRelative(IIII)V

    .line 110
    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;->setFlapColor(I)V

    .line 114
    invoke-static {}, Lcom/android/calendar/Utils;->isJellybeanMr2OrLater()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    const/4 v1, 0x0

    invoke-virtual {p0, v8, v1}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 117
    :cond_0
    return-object v0
.end method

.method private getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/calendar/timely/UrlRequestKey;->fromUrlString(Landroid/content/Context;Ljava/lang/String;)Lcom/android/calendar/timely/UrlRequestKey;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    .line 84
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->mIconCache:Lcom/android/bitmap/BitmapCache;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    .line 85
    iget v2, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->mIconWidth:I

    iget v3, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->mIconHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;->setDecodeDimensions(II)V

    .line 86
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->mIconWidth:I

    iget v4, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->mIconHeight:I

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 87
    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;->bind(Lcom/android/bitmap/RequestKey;)V

    .line 88
    return-object v1
.end method

.method private setToChildrenContentDescription()V
    .locals 5

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->join_descriptions:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->mFileNameView:Landroid/widget/TextView;

    .line 147
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->mFileTypeView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 49
    sget v0, Lcom/android/calendar/R$id;->file_name:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->mFileNameView:Landroid/widget/TextView;

    .line 50
    sget v0, Lcom/android/calendar/R$id;->file_type:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->mFileTypeView:Landroid/widget/TextView;

    .line 51
    sget v0, Lcom/android/calendar/R$id;->image:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->mBackground:Landroid/widget/ImageView;

    .line 52
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->setToChildrenContentDescription()V

    .line 129
    :cond_0
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 138
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method public setAttachment(Lcom/google/android/calendar/api/attachments/Attachment;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 55
    if-nez p1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/calendar/api/attachments/Attachment;->iconLink:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/calendar/event/segment/AttachmentHelper;->inferMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v1, p1, Lcom/google/android/calendar/api/attachments/Attachment;->title:Ljava/lang/String;

    .line 63
    iget-object v2, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->mFileNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/calendar/event/segment/AttachmentHelper;->getTypeDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/calendar/event/segment/AttachmentHelper;->getTypeIconUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    iget-object v3, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->mFileTypeView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    if-eqz v2, :cond_1

    .line 70
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->mFileTypeView:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/calendar/event/segment/AttachmentHelper;->getTypeColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->mBackground:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->getCornersDrawable(I)Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-virtual {p0, v4}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
