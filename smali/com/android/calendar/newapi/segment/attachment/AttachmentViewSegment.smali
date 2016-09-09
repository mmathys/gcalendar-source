.class public Lcom/android/calendar/newapi/segment/attachment/AttachmentViewSegment;
.super Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;
.source "AttachmentViewSegment.java"

# interfaces
.implements Lcom/android/calendar/newapi/segment/common/ViewSegment;
.implements Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelT::",
        "Lcom/android/calendar/newapi/model/EventHolder;",
        ">",
        "Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;",
        "Lcom/android/calendar/newapi/segment/common/ViewSegment;",
        "Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener",
        "<",
        "Lcom/google/android/calendar/api/attachments/Attachment;",
        ">;"
    }
.end annotation


# instance fields
.field private final mModel:Lcom/android/calendar/newapi/model/EventHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/EventHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TModelT;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    .line 20
    invoke-virtual {p0, p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentViewSegment;->setOnCarouselTileClickListener(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener;)V

    .line 21
    return-void
.end method


# virtual methods
.method public onCarouselTileClick(Landroid/view/View;Lcom/google/android/calendar/api/attachments/Attachment;)V
    .locals 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/EventHolder;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 26
    iget-object v1, p2, Lcom/google/android/calendar/api/attachments/Attachment;->fileUrl:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentViewSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentUtils;->openAttachment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public bridge synthetic onCarouselTileClick(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p2, Lcom/google/android/calendar/api/attachments/Attachment;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/segment/attachment/AttachmentViewSegment;->onCarouselTileClick(Landroid/view/View;Lcom/google/android/calendar/api/attachments/Attachment;)V

    return-void
.end method

.method public updateUi()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/EventHolder;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentViewSegment;->setVisibility(I)V

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentViewSegment;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/EventHolder;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getAttachments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentViewSegment;->setAttachments(Ljava/util/List;)V

    goto :goto_0
.end method
