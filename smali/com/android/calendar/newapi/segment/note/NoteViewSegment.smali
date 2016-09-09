.class public Lcom/android/calendar/newapi/segment/note/NoteViewSegment;
.super Lcom/android/calendar/newapi/segment/note/ConferenceTileView;
.source "NoteViewSegment.java"

# interfaces
.implements Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;
.implements Lcom/android/calendar/newapi/segment/common/ViewSegment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelT::",
        "Lcom/android/calendar/newapi/model/EventHolder;",
        ":",
        "Lcom/android/calendar/newapi/model/ConferenceEvent;",
        ">",
        "Lcom/android/calendar/newapi/segment/note/ConferenceTileView;",
        "Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;",
        "Lcom/android/calendar/newapi/segment/common/ViewSegment;"
    }
.end annotation


# instance fields
.field private mAccessCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/calendar/event/AccessCode;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mModel:Lcom/android/calendar/newapi/model/EventHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/calendar/newapi/model/EventHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/FragmentManager;",
            "TModelT;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/segment/note/ConferenceTileView;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p3, p0, Lcom/android/calendar/newapi/segment/note/NoteViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    .line 29
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/note/NoteViewSegment;->mFragmentManager:Landroid/app/FragmentManager;

    .line 30
    return-void
.end method

.method private getNote()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 52
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/note/NoteViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    invoke-interface {v1}, Lcom/android/calendar/newapi/model/EventHolder;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/calendar/api/Event;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-object v0

    .line 56
    :cond_1
    const-string v2, "(\r\n|\n\r|\r|\n)"

    const-string v3, "<br />"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 60
    goto :goto_0
.end method


# virtual methods
.method protected getAnalyticsSegmentDescription()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/android/calendar/R$string;->analytics_label_in_segment_description:I

    return v0
.end method

.method public onClick(Lcom/android/calendar/event/ConferenceCallView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/note/NoteViewSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_label_in_segment_description:I

    invoke-static {v0, v1}, Lcom/android/calendar/event/ConferenceCallUtils;->logConferenceLinksTapped(Landroid/content/Context;I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/note/NoteViewSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/note/NoteViewSegment;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/note/NoteViewSegment;->mAccessCodes:Ljava/util/Set;

    .line 68
    invoke-static {v0, v1, p2, v2}, Lcom/android/calendar/event/ConferenceCallUtils;->dialConferenceCall(Landroid/content/Context;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/util/Set;)V

    .line 70
    return-void
.end method

.method protected setupView()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Lcom/android/calendar/newapi/segment/note/ConferenceTileView;->setupView()V

    .line 35
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/note/NoteViewSegment;->indentContent()Lcom/android/calendar/newapi/view/TileView;

    .line 36
    sget v0, Lcom/android/calendar/R$drawable;->ic_notes:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/note/NoteViewSegment;->setIconDrawable(I)Lcom/android/calendar/newapi/view/TileView;

    .line 37
    invoke-static {p0}, Lcom/android/calendar/newapi/view/MaterialViewUtils;->addMaterialListStyling(Landroid/view/ViewGroup;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/note/NoteViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->describe_notes_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/note/NoteViewSegment;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p0, p0}, Lcom/android/calendar/newapi/segment/note/NoteViewSegment;->setConferenceNumberClickListener(Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;)V

    .line 40
    return-void
.end method

.method public updateUi()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/note/NoteViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    check-cast v0, Lcom/android/calendar/newapi/model/ConferenceEvent;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/ConferenceEvent;->getConferenceAccessTokens()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/note/NoteViewSegment;->mAccessCodes:Ljava/util/Set;

    .line 46
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/note/NoteViewSegment;->getNote()Ljava/lang/CharSequence;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/calendar/newapi/segment/note/NoteViewSegment;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/segment/note/ConferenceTileView;

    .line 49
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
