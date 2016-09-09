.class Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "ColorEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/ColorEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorSpinnerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;


# direct methods
.method private constructor <init>(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/event/edit/segment/ColorEditSegment;Lcom/android/calendar/event/edit/segment/ColorEditSegment$1;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;-><init>(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->getAspectValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/InputAspectColor;

    invoke-interface {v0}, Lcom/android/calendar/event/data/InputAspectColor;->getDefaultColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColors:Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->access$700(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 237
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColors:Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->access$700(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 215
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;

    .line 217
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->access$300(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 218
    iget-object v2, v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 219
    iget-object v2, v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;->check:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object v2, v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;->label:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mDropdownSelectedLabelTextColor:I
    invoke-static {v3}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->access$400(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    :goto_0
    iget-object v2, v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;->label:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mDefaultPadding:I
    invoke-static {v3}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->access$600(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)I

    move-result v3

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 227
    iget-object v0, v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    return-object v1

    .line 222
    :cond_0
    iget-object v2, v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;->label:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mDropdownLabelTextColor:I
    invoke-static {v3}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->access$500(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    iget-object v2, v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;->check:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v2, v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method public getItem(I)Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColors:Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->access$700(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColors:Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->access$700(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->getAspectValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/InputAspectColor;

    invoke-interface {v0}, Lcom/android/calendar/event/data/InputAspectColor;->getDefaultColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->getItem(I)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 251
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 256
    if-nez p2, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    iget-object v0, v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/calendar/R$layout;->edit_segment_color_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 258
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 259
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    iget v0, v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColorSwatchSize:I

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 260
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    iget v0, v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColorSwatchSize:I

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 261
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    iget v3, v3, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColorSwatchStrokeWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 262
    new-instance v3, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;

    iget-object v4, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v3, v4, v0, v2}, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;-><init>(Lcom/android/calendar/event/edit/segment/ColorEditSegment;Landroid/view/ViewGroup;Landroid/graphics/drawable/ShapeDrawable;)V

    .line 263
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v1

    .line 265
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;

    .line 268
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColors:Ljava/util/List;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->access$700(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColorNames:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->access$800(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColors:Ljava/util/List;
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->access$700(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColorNames:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->access$800(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColors:Ljava/util/List;
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->access$700(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    .line 274
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColors:Ljava/util/List;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->access$700(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-static {v1}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v1

    .line 279
    :goto_1
    iget-object v3, v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v2, v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;->label:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mLabelTextColor:I
    invoke-static {v3}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->access$1000(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    iget-object v2, v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 282
    iget-object v2, v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 283
    iget-object v1, v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 284
    iget-object v1, v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;->check:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    iget-object v0, v0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    return-object p2

    .line 272
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->unknown_color_name:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mDefaultColorString:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->access$900(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)Ljava/lang/String;

    move-result-object v2

    .line 277
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->getAspectValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/data/InputAspectColor;

    invoke-interface {v1}, Lcom/android/calendar/event/data/InputAspectColor;->getDefaultColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColors:Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->access$700(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isUnlistedColor(I)Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$ColorSpinnerAdapter;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mColors:Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->access$700(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
