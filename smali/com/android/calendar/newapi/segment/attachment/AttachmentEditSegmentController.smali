.class public Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;
.super Lcom/android/calendar/newapi/segment/common/SegmentController;
.source "AttachmentEditSegmentController.java"

# interfaces
.implements Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController$FileMetadataTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEventModifications:Lcom/google/android/calendar/api/EventModifications;

.field private mView:Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/common/SegmentController;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;)Lcom/google/android/calendar/api/EventModifications;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->updateUi()V

    return-void
.end method

.method private getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;Lcom/google/android/calendar/api/EventModifications;)Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;
    .locals 2

    .prologue
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;

    .line 48
    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;-><init>()V

    .line 50
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 52
    :cond_0
    invoke-direct {v0, p2}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->setView(Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;)V

    .line 53
    invoke-direct {v0, p3}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->setData(Lcom/google/android/calendar/api/EventModifications;)V

    .line 54
    return-object v0
.end method

.method public static newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;
    .locals 2

    .prologue
    .line 37
    sget v0, Lcom/android/calendar/R$layout;->newapi_attachment_edit_segment:I

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;

    .line 37
    return-object v0
.end method

.method private setData(Lcom/google/android/calendar/api/EventModifications;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 64
    return-void
.end method

.method private setView(Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;

    .line 59
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->setListener(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method private updateUi()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v1}, Lcom/google/android/calendar/api/EventModifications;->getAttachments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->setAttachments(Ljava/util/List;)V

    .line 91
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 99
    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_1

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/newapi/segment/common/SegmentController;->onActivityResult(IILandroid/content/Intent;)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 106
    const-string v0, "driveIdExtra"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/google/android/gms/drive/DriveId;->decodeFromString(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController$FileMetadataTask;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController$FileMetadataTask;-><init>(Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/drive/DriveId;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController$FileMetadataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onInitialize()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->updateUi()V

    .line 69
    return-void
.end method

.method public onNewAttachmentClicked()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/google/android/calendar/timely/DriveFilePickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    const-string v1, "accountNameExtra"

    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->startActivityForResult(Landroid/content/Intent;I)V

    .line 76
    return-void
.end method

.method public onOpenAttachment(Lcom/google/android/calendar/api/attachments/Attachment;)V
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/calendar/api/attachments/Attachment;->fileUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/newapi/segment/attachment/AttachmentUtils;->openAttachment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onRemoveAttachment(Lcom/google/android/calendar/api/attachments/Attachment;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getAttachmentModifications()Lcom/google/android/calendar/api/attachments/AttachmentModifications;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/attachments/AttachmentModifications;->removeAttachment(Lcom/google/android/calendar/api/attachments/Attachment;)V

    .line 86
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->updateUi()V

    .line 87
    return-void
.end method
