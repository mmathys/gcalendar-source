.class public Lcom/google/android/calendar/event/edit/segment/TaskSuggestionAdapter;
.super Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestionAdapter;
.source "TaskSuggestionAdapter.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestionAdapter;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestionAdapter;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 31
    sget v0, Lcom/android/calendar/R$id;->title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 32
    if-eqz v0, :cond_0

    .line 33
    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestionAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/calendar/R$style;->TaskSuggestTitleTextAppearance:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 36
    :cond_0
    return-object v1
.end method

.method protected setImage(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;Lcom/android/bitmap/view/BitmapDrawableImageView;)V
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p2}, Lcom/android/bitmap/view/BitmapDrawableImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 47
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 48
    invoke-virtual {p2, v0}, Lcom/android/bitmap/view/BitmapDrawableImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_create_googblue_24:I

    .line 52
    iget-object v1, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->renderingData:Lcom/google/personalization/assist/annotate/api/nano/RenderingData;

    .line 53
    if-eqz v1, :cond_0

    .line 54
    iget v1, v1, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->assistanceType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 55
    sget-object v2, Lcom/google/android/calendar/event/edit/segment/TaskSuggestionAdapter;->ASSISTANCE_TYPES_TO_ICON_RES_IDS:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestionAdapter;->ASSISTANCE_TYPES_TO_ICON_RES_IDS:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 59
    :cond_0
    invoke-virtual {p2, v0}, Lcom/android/bitmap/view/BitmapDrawableImageView;->setImageResource(I)V

    .line 60
    return-void
.end method

.method protected bridge synthetic setImage(Ljava/lang/Object;Lcom/android/bitmap/view/BitmapDrawableImageView;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestionAdapter;->setImage(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;Lcom/android/bitmap/view/BitmapDrawableImageView;)V

    return-void
.end method
