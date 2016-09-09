.class public abstract Lcom/android/calendar/newapi/segment/note/ConferenceTileView;
.super Lcom/android/calendar/newapi/view/TextTileView;
.source "ConferenceTileView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/view/TextTileView;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method private createOneClickDialingText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    .line 43
    :cond_0
    invoke-static {p1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/android/calendar/event/ConferenceCallUtils;->addLinks(Landroid/text/Spannable;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/note/ConferenceTileView;->getFirstLine()Landroid/widget/TextView;

    move-result-object v1

    .line 46
    invoke-static {}, Lcom/android/calendar/event/ConferenceCallView$ConferenceCallLinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract getAnalyticsSegmentDescription()I
.end method

.method protected onContentViewSet(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/view/TextTileView;->onContentViewSet(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/note/ConferenceTileView;->getFirstLine()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/note/ConferenceTileView;->getFirstLine()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 59
    check-cast p1, Landroid/view/ViewGroup;

    .line 60
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/note/ConferenceTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->tile_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 61
    return-void
.end method

.method public setConferenceNumberClickListener(Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;)V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/note/ConferenceTileView;->getFirstLine()Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/ConferenceCallView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/event/ConferenceCallView;->setConferenceNumberClickListener(Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;)V

    .line 52
    return-void
.end method

.method public setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/segment/note/ConferenceTileView;
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/segment/note/ConferenceTileView;->createOneClickDialingText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/calendar/newapi/view/TextTileView;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 30
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/note/ConferenceTileView;->getFirstLine()Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/ConferenceCallView;

    invoke-virtual {v0}, Lcom/android/calendar/event/ConferenceCallView;->hasConferenceLink()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/note/ConferenceTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/note/ConferenceTileView;->getAnalyticsSegmentDescription()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/calendar/event/ConferenceCallUtils;->logConferenceLinksShown(Landroid/content/Context;I)V

    .line 34
    :cond_0
    return-object p0
.end method

.method public bridge synthetic setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/segment/note/ConferenceTileView;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/segment/note/ConferenceTileView;

    move-result-object v0

    return-object v0
.end method

.method protected setupView()V
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/android/calendar/R$layout;->newapi_tile_content_two_line_conference:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/note/ConferenceTileView;->setContentView(I)Lcom/android/calendar/newapi/view/TileView;

    .line 24
    return-void
.end method
