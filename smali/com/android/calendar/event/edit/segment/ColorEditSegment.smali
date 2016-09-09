.class public Lcom/android/calendar/event/edit/segment/ColorEditSegment;
.super Lcom/android/calendar/editor/AspectEditSegment;
.source "ColorEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;,
        Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/AspectEditSegment",
        "<",
        "Lcom/android/calendar/event/data/InputAspectColor;",
        "Lcom/android/calendar/editor/AspectAdapter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;

.field private mColorImageView:Landroid/widget/ImageView;

.field private mColorNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mColorRefreshListener:Ljava/lang/Runnable;

.field final mColorSwatchSize:I

.field final mColorSwatchStrokeWidth:I

.field private mColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultColorString:Ljava/lang/String;

.field private mDropdownLabelTextColor:I

.field private mDropdownSelectedLabelTextColor:I

.field final mInflater:Landroid/view/LayoutInflater;

.field private mLabelTextColor:I

.field private mMutableColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 78
    const-class v0, Lcom/android/calendar/event/data/InputAspectColor;

    const-class v1, Lcom/android/calendar/editor/AspectAdapter;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/calendar/editor/AspectEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColors:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColorNames:Ljava/util/Map;

    .line 70
    new-instance v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment$1;-><init>(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColorRefreshListener:Ljava/lang/Runnable;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mInflater:Landroid/view/LayoutInflater;

    .line 81
    sget v1, Lcom/android/calendar/R$dimen;->edit_color_swatch_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColorSwatchSize:I

    .line 82
    sget v1, Lcom/android/calendar/R$dimen;->edit_color_swatch_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColorSwatchStrokeWidth:I

    .line 84
    sget-object v1, Lcom/android/calendar/R$styleable;->DropdownEditSegment:[I

    .line 85
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_1

    .line 87
    sget v2, Lcom/android/calendar/R$styleable;->DropdownEditSegment_label_color:I

    sget v3, Lcom/android/calendar/R$color;->color_edit_segment_label:I

    .line 89
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 87
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mLabelTextColor:I

    .line 90
    sget v2, Lcom/android/calendar/R$styleable;->DropdownEditSegment_dropdown_label_color:I

    sget v3, Lcom/android/calendar/R$color;->color_edit_segment_dropdown_label:I

    .line 92
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 90
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mDropdownLabelTextColor:I

    .line 94
    sget v2, Lcom/android/calendar/R$styleable;->DropdownEditSegment_unlisted_color_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mDefaultColorString:Ljava/lang/String;

    .line 96
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mDefaultColorString:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 97
    sget v2, Lcom/android/calendar/R$string;->edit_color_default_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mDefaultColorString:Ljava/lang/String;

    .line 100
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    :cond_1
    sget v1, Lcom/android/calendar/R$color;->google_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mDropdownSelectedLabelTextColor:I

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mMutableColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/edit/segment/ColorEditSegment;Lcom/google/calendar/v2/client/service/api/common/Color;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->updateColorSet(Lcom/google/calendar/v2/client/service/api/common/Color;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mLabelTextColor:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mDropdownSelectedLabelTextColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mDropdownLabelTextColor:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mDefaultPadding:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColorNames:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mDefaultColorString:Ljava/lang/String;

    return-object v0
.end method

.method private updateColorSet(Lcom/google/calendar/v2/client/service/api/common/Color;)V
    .locals 3

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->getAspectValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/InputAspectColor;

    .line 147
    const/4 v1, 0x0

    .line 148
    if-nez p1, :cond_0

    .line 149
    invoke-interface {v0}, Lcom/android/calendar/event/data/InputAspectColor;->getDefaultColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object p1

    .line 150
    const/4 v1, 0x1

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 154
    invoke-interface {v0}, Lcom/android/calendar/event/data/InputAspectColor;->getColorOptions()Ljava/util/List;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_1

    .line 156
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColors:Ljava/util/List;

    invoke-static {v0}, Lcom/android/calendar/Utils;->sortColors(Ljava/util/List;)V

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColors:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->getColorNames(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColorNames:Ljava/util/Map;

    .line 161
    new-instance v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;-><init>(Lcom/android/calendar/event/edit/segment/ColorEditSegment;Lcom/android/calendar/event/edit/segment/ColorEditSegment$1;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mAdapter:Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;

    .line 162
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mAdapter:Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 163
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 164
    if-ltz v0, :cond_2

    if-eqz v1, :cond_3

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 168
    :cond_3
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 172
    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->updateDisplayColor(I)V

    .line 173
    return-void
.end method

.method private updateDisplayColor(I)V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mAdapter:Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->getItem(I)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColorImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 196
    invoke-static {v0}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 195
    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 197
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColorImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 199
    :cond_0
    return-void
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectColor;)Z
    .locals 1

    .prologue
    .line 141
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectColor;->canChangeColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectColor;->getColorOptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 51
    check-cast p2, Lcom/android/calendar/event/data/InputAspectColor;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectColor;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 206
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectColor;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColorRefreshListener:Ljava/lang/Runnable;

    invoke-interface {p2, v0}, Lcom/android/calendar/event/data/InputAspectColor;->removeColorRefreshListener(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p2, Lcom/android/calendar/event/data/InputAspectColor;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectColor;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/calendar/editor/AspectEditSegment;->onFinishInflate()V

    .line 110
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    .line 111
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->setLayoutDirection(I)V

    .line 113
    sget v0, Lcom/android/calendar/R$id;->color_icon:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColorImageView:Landroid/widget/ImageView;

    .line 114
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 115
    iget v1, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColorSwatchSize:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 116
    iget v1, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColorSwatchSize:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 117
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColorSwatchStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColorImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    sget v0, Lcom/android/calendar/R$id;->color_spinner:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mSpinner:Landroid/widget/Spinner;

    .line 121
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 122
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->getHideKeyboardHelper()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 124
    invoke-virtual {p0, p0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mAdapter:Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;

    invoke-virtual {v0, p3}, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->isUnlistedColor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->getAspectValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/InputAspectColor;

    invoke-interface {v0}, Lcom/android/calendar/event/data/InputAspectColor;->getUnlistedColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    .line 183
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mMutableColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 184
    invoke-direct {p0, p3}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->updateDisplayColor(I)V

    .line 185
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mAdapter:Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;

    invoke-virtual {v0, p3}, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->getItem(I)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 190
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectColor;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColorRefreshListener:Ljava/lang/Runnable;

    invoke-interface {p2, v0}, Lcom/android/calendar/event/data/InputAspectColor;->addColorRefreshListener(Ljava/lang/Runnable;)V

    .line 130
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectColor;->mutableColor()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mMutableColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 131
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mMutableColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->updateColorSet(Lcom/google/calendar/v2/client/service/api/common/Color;)V

    .line 132
    return-void
.end method

.method protected bridge synthetic onSetInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p2, Lcom/android/calendar/event/data/InputAspectColor;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectColor;)V

    return-void
.end method
