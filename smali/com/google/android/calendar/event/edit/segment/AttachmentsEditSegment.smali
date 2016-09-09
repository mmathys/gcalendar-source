.class public Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;
.super Lcom/android/calendar/editor/EditSegment;
.source "AttachmentsEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;
.implements Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$FileMetadataTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/EditSegment",
        "<",
        "Lcom/android/calendar/event/data/EventEditManager;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;",
        "Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener",
        "<",
        "Lcom/google/api/services/calendar/model/EventAttachment;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAclPromptsCallback:Lcom/android/calendar/editor/EditSegment$Callback;

.field private mAddAttachmentTextView:Landroid/view/View;

.field private mAddMoreAttachmentsTextView:Landroid/view/View;

.field private mAttachmentToDriveResourceId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attachment;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachments:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mDriveAccountName:Ljava/lang/String;

.field private mDriveFilePickerOpen:Z

.field private mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

.field private mRegisteredForActivityResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

    .line 64
    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->TAG:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/android/calendar/event/data/EventEditManager;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/editor/EditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;)V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAttachmentToDriveResourceId:Ljava/util/Map;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->removeAttachment(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAttachments:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->getIconUrlForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAttachmentToDriveResourceId:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->updateAttachmentsView()V

    return-void
.end method

.method private getAccountName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 417
    const/4 v0, 0x0

    .line 418
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v1

    instance-of v1, v1, Lcom/android/calendar/event/data/AndroidCalendarKey;

    if-eqz v1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 421
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 424
    :cond_0
    return-object v0
.end method

.method private getActivityResultNotifierActivity()Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 539
    instance-of v1, v0, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    if-eqz v1, :cond_0

    .line 540
    check-cast v0, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    .line 542
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAttendeeEmailAddresses()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->observableAttendees()Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    move-result-object v0

    .line 242
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    .line 243
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isSelf()Z

    move-result v3

    if-nez v3, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getPrincipal()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    .line 245
    instance-of v3, v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    if-eqz v3, :cond_0

    .line 246
    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :cond_1
    return-object v1
.end method

.method private getDriveAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mDriveAccountName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mDriveAccountName:Ljava/lang/String;

    .line 435
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->getAccountName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getIconUrlForMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/calendar/event/segment/AttachmentHelper;->getTypeIconUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isGoogleAccount()Z
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 165
    const-string v1, "com.google"

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openFilePicker()V
    .locals 4

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mDriveFilePickerOpen:Z

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mDriveFilePickerOpen:Z

    .line 111
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->registerForActivityResult()Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    move-result-object v0

    .line 112
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/android/calendar/timely/DriveFilePickerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 114
    if-eqz v2, :cond_1

    .line 115
    const-string v3, "accountNameExtra"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iput-object v2, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mDriveAccountName:Ljava/lang/String;

    .line 118
    :cond_1
    const/16 v2, 0x3e9

    invoke-interface {v0, v1, v2}, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private registerForActivityResult()Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;
    .locals 2

    .prologue
    .line 517
    .line 518
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->getActivityResultNotifierActivity()Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    move-result-object v0

    .line 519
    iget-boolean v1, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mRegisteredForActivityResult:Z

    if-nez v1, :cond_0

    .line 520
    invoke-interface {v0, p0}, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;->registerActivityResultListener(Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;)V

    .line 521
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mRegisteredForActivityResult:Z

    .line 524
    :cond_0
    return-object v0
.end method

.method private removeAttachment(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 439
    if-nez p1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    const/4 v1, 0x0

    .line 444
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAttachments:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Attachment;

    .line 445
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attachment;->getFileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 451
    :goto_1
    if-eqz v0, :cond_0

    .line 452
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAttachments:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->remove(Ljava/lang/Object;)Z

    .line 453
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAttachmentToDriveResourceId:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->updateAttachmentsView()V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private removeAttachmentsForNonGoogleAccount()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAttachments:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAttachments:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAttachments:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->clear()V

    .line 154
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->updateAttachmentsView()V

    .line 155
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->non_google_account_attachments:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 155
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 159
    :cond_0
    return-void
.end method

.method private showCheckPermissionsProgressDialog(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    .line 318
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {v0, p1, p2}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->newInstance(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/google/android/gm/drive/CheckPermissionProgressFragment;

    move-result-object v0

    .line 319
    invoke-virtual {v0, p0}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->setAttachmentsEditSegment(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;)V

    .line 320
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v1}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "check-permissions-dialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method private unregisterForActivityResult()V
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mRegisteredForActivityResult:Z

    if-eqz v0, :cond_0

    .line 530
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->getActivityResultNotifierActivity()Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    move-result-object v0

    .line 531
    invoke-interface {v0, p0}, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;->unregisterActivityResultListener(Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;)V

    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mRegisteredForActivityResult:Z

    .line 534
    :cond_0
    return-void
.end method

.method private updateAttachmentsView()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v4, 0x0

    .line 349
    sget v0, Lcom/android/calendar/R$id;->attachment_holder:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 350
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 351
    new-instance v1, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 354
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;

    .line 355
    invoke-virtual {v1, p0}, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;->setOnCarouselTileClickListener(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener;)V

    .line 356
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 357
    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAddMoreAttachmentsTextView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAddAttachmentTextView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 360
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 361
    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAttachments:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    if-eqz v2, :cond_1

    .line 362
    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAttachments:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/calendar/v2/client/service/api/events/Attachment;

    .line 363
    if-eqz v2, :cond_4

    .line 364
    new-instance v3, Lcom/google/api/services/calendar/model/EventAttachment;

    invoke-direct {v3}, Lcom/google/api/services/calendar/model/EventAttachment;-><init>()V

    .line 365
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/api/events/Attachment;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/api/services/calendar/model/EventAttachment;->setTitle(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttachment;

    .line 366
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/api/events/Attachment;->getIconUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/api/services/calendar/model/EventAttachment;->setIconLink(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttachment;

    .line 367
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/api/events/Attachment;->getFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/api/services/calendar/model/EventAttachment;->setFileUrl(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttachment;

    .line 368
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    const/4 v2, 0x1

    :goto_1
    move v3, v2

    .line 371
    goto :goto_0

    :cond_1
    move v3, v4

    .line 373
    :cond_2
    if-eqz v3, :cond_3

    .line 374
    invoke-virtual {v1, v5}, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;->setAttachments(Ljava/util/List;)V

    .line 375
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAddMoreAttachmentsTextView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAddAttachmentTextView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 382
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->showOrHide()V

    .line 383
    return-void

    .line 379
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;->clearAttachments()V

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/event/data/EventEditManager;)Z
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p1}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canChangeAttachments()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic canBeChanged(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 58
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->canBeChanged(Lcom/android/calendar/event/data/EventEditManager;)Z

    move-result v0

    return v0
.end method

.method public fixPermissions(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/drive/PotentialFix;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 311
    new-instance v0, Lcom/google/android/gm/drive/FixPermissionRunnable;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gm/drive/FixPermissionRunnable;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/drive/PotentialFix;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 312
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->onAclPromptsDone()V

    .line 313
    return-void
.end method

.method public onAclPromptsDone()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAclPromptsCallback:Lcom/android/calendar/editor/EditSegment$Callback;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAclPromptsCallback:Lcom/android/calendar/editor/EditSegment$Callback;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegment$Callback;->onPromptedSave()V

    .line 236
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 465
    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    .line 466
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->TAG:Ljava/lang/String;

    const-string v1, "Received onActivityResult for result code other than Drive file picker"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 510
    :goto_0
    return-void

    .line 472
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    .line 473
    const-string v0, "driveIdExtra"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-static {v0}, Lcom/google/android/gms/drive/DriveId;->decodeFromString(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Lcom/google/android/gms/drive/DriveId;->getResourceId()Ljava/lang/String;

    move-result-object v1

    .line 476
    new-instance v2, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$2;

    .line 477
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->getDriveAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$2;-><init>(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/drive/DriveId;

    aput-object v0, v1, v5

    invoke-virtual {v2, v1}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$FileMetadataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 506
    :cond_1
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->unregisterForActivityResult()V

    .line 508
    iput-boolean v5, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mDriveFilePickerOpen:Z

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mDriveAccountName:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCarouselTileClick(Landroid/view/View;Lcom/google/api/services/calendar/model/EventAttachment;)V
    .locals 7

    .prologue
    .line 392
    instance-of v0, p1, Lcom/google/android/calendar/event/view/AttachmentView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    move-object v3, p1

    .line 393
    check-cast v3, Lcom/google/android/calendar/event/view/AttachmentView;

    .line 394
    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/EventAttachment;->getFileUrl()Ljava/lang/String;

    move-result-object v5

    .line 395
    new-instance v6, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 396
    invoke-virtual {v6}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 397
    sget v1, Lcom/android/calendar/R$string;->view_attachment:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 398
    sget v1, Lcom/android/calendar/R$string;->remove_attachment:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 399
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$1;-><init>(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;Landroid/view/MenuItem;Lcom/google/android/calendar/event/view/AttachmentView;Landroid/view/MenuItem;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 412
    invoke-virtual {v6}, Landroid/widget/PopupMenu;->show()V

    .line 414
    :cond_0
    return-void
.end method

.method public bridge synthetic onCarouselTileClick(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    check-cast p2, Lcom/google/api/services/calendar/model/EventAttachment;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->onCarouselTileClick(Landroid/view/View;Lcom/google/api/services/calendar/model/EventAttachment;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAddAttachmentTextView:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAddMoreAttachmentsTextView:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->openFilePicker()V

    .line 101
    :cond_1
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAttachments:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 178
    iget-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mDriveFilePickerOpen:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->unregisterForActivityResult()V

    .line 181
    :cond_0
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->onDisposeInput(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/android/calendar/editor/EditSegment;->onFinishInflate()V

    .line 87
    sget v0, Lcom/android/calendar/R$id;->add_attachment_text:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAddAttachmentTextView:Landroid/view/View;

    .line 88
    sget v0, Lcom/android/calendar/R$id;->add_more_attachments_text:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAddMoreAttachmentsTextView:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAddAttachmentTextView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAddMoreAttachmentsTextView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->updateAttachmentsView()V

    .line 94
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/android/calendar/editor/EditSegment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 203
    if-eqz p1, :cond_1

    .line 204
    const-string v0, "drive_file_picker_open"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "drive_file_picker_open"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mDriveFilePickerOpen:Z

    .line 206
    iget-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mDriveFilePickerOpen:Z

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->registerForActivityResult()Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    .line 211
    :cond_0
    const-string v0, "drive_account_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    const-string v0, "drive_account_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mDriveAccountName:Ljava/lang/String;

    .line 215
    :cond_1
    return-void
.end method

.method public onRestoreViewState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    .line 327
    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "check-permissions-dialog"

    .line 328
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;

    .line 329
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0, p0}, Lcom/google/android/gm/drive/CheckPermissionProgressFragment;->setAttachmentsEditSegment(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    .line 334
    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "acl-fixer-dialog"

    .line 335
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;

    .line 336
    if-eqz v0, :cond_1

    .line 337
    invoke-virtual {v0, p0}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->setAttachmentsEditSegment(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;)V

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    .line 341
    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "outside-domain-warning-dialog"

    .line 342
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;

    .line 343
    if-eqz v0, :cond_2

    .line 344
    invoke-virtual {v0, p0}, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->setAttachmentsEditSegment(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;)V

    .line 346
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/android/calendar/editor/EditSegment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    iget-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mDriveFilePickerOpen:Z

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "drive_file_picker_open"

    iget-boolean v1, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mDriveFilePickerOpen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 195
    const-string v0, "drive_account_name"

    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->getDriveAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->canBeChanged(Lcom/android/calendar/event/data/EventEditManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-virtual {p1}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    .line 131
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableAttachments()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAttachments:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 132
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->updateAttachmentsView()V

    .line 134
    iget-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mDriveFilePickerOpen:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->registerForActivityResult()Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    goto :goto_0
.end method

.method protected bridge synthetic onSetInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->onSetInput(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method

.method public promptBeforeSaving(Lcom/android/calendar/editor/EditSegment$Callback;)Z
    .locals 4

    .prologue
    .line 219
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAttachmentToDriveResourceId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAttachmentToDriveResourceId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Attachment;

    .line 221
    iget-object v3, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAttachmentToDriveResourceId:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->getAttendeeEmailAddresses()Ljava/util/ArrayList;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 225
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAclPromptsCallback:Lcom/android/calendar/editor/EditSegment$Callback;

    .line 226
    invoke-direct {p0, v0, v1}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->showCheckPermissionsProgressDialog(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 227
    const/4 v0, 0x1

    .line 229
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public showFilesNotSharedDialog(Landroid/app/FragmentManager;I)V
    .locals 2

    .prologue
    .line 277
    invoke-static {p2}, Lcom/google/android/gm/drive/FilesNotSharedDialog;->newInstance(I)Lcom/google/android/gm/drive/FilesNotSharedDialog;

    move-result-object v0

    .line 278
    const-string v1, "files-not-shared-dialog"

    invoke-virtual {v0, p1, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->onAclPromptsDone()V

    .line 280
    return-void
.end method

.method public showFixPermissionsDialog(Landroid/app/FragmentManager;Lcom/google/android/gm/drive/FixPermissionDialogState;Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Lcom/google/android/gm/drive/FixPermissionDialogState;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/drive/PotentialFix;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 261
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->onAclPromptsDone()V

    .line 270
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-static {p2, p3, p4, p5}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->newInstance(Lcom/google/android/gm/drive/FixPermissionDialogState;Ljava/util/ArrayList;ILjava/lang/String;)Lcom/google/android/gm/drive/FixPermissionsDialogFragment;

    move-result-object v0

    .line 268
    invoke-virtual {v0, p0}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->setAttachmentsEditSegment(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;)V

    .line 269
    const-string v1, "acl-fixer-dialog"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gm/drive/FixPermissionsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showOrHide()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->isGoogleAccount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->hide()V

    .line 145
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->removeAttachmentsForNonGoogleAccount()V

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-super {p0}, Lcom/android/calendar/editor/EditSegment;->showOrHide()V

    goto :goto_0
.end method

.method public showOutsideDomainWarningDialog(Landroid/app/FragmentManager;Lcom/google/android/gm/drive/PotentialFix;Ljava/lang/String;Lcom/google/android/gm/drive/FixPermissionDialogState;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Lcom/google/android/gm/drive/PotentialFix;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/drive/FixPermissionDialogState;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/drive/PotentialFix;",
            ">;I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 287
    if-nez p2, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->onAclPromptsDone()V

    .line 308
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gm/drive/PotentialFix;->getOutOfDomainWarningEmailAddresses()Ljava/util/List;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_1

    .line 298
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    :cond_1
    invoke-virtual {p0, p7, p8, p2, p3}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->fixPermissions(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/drive/PotentialFix;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v5, p8

    .line 304
    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->newInstance(Lcom/google/android/gm/drive/PotentialFix;Ljava/lang/String;Lcom/google/android/gm/drive/FixPermissionDialogState;Ljava/util/ArrayList;ILjava/lang/String;)Lcom/google/android/gm/drive/OutsideDomainWarningDialog;

    move-result-object v0

    .line 306
    invoke-virtual {v0, p0}, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->setAttachmentsEditSegment(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;)V

    .line 307
    const-string v1, "outside-domain-warning-dialog"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
