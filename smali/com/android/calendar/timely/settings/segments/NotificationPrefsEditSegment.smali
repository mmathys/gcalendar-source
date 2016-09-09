.class public Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;
.super Lcom/android/calendar/editor/AspectEditSegment;
.source "NotificationPrefsEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/AspectEditSegment",
        "<",
        "Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;",
        "Lcom/android/calendar/editor/AspectAdapter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mCustomRingtoneString:Ljava/lang/String;

.field private mMutableNotify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private mMutableRingtone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMutableUseStandardTone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private mMutableVibrate:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private mNoRingtoneString:Ljava/lang/String;

.field private mNotifyListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifySwitch:Landroid/widget/Switch;

.field private mRingtoneButton:Landroid/widget/TextView;

.field private mRingtoneHeader:Landroid/widget/TextView;

.field private mRingtoneListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRingtonePickerOpen:Z

.field private mUseStandardListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUseStandardRow:Landroid/view/View;

.field private mUseStandardSwitch:Landroid/widget/Switch;

.field private mVibrateListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mVibrateRow:Landroid/view/View;

.field private mVibrateSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 120
    const-class v0, Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;

    const-class v1, Lcom/android/calendar/editor/AspectAdapter;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/calendar/editor/AspectEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 73
    new-instance v0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$1;-><init>(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mNotifyListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 92
    new-instance v0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$2;-><init>(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mUseStandardListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 103
    new-instance v0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$3;-><init>(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mRingtoneListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 110
    new-instance v0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$4;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$4;-><init>(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mVibrateListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mApplicationContext:Landroid/content/Context;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    sget v1, Lcom/android/calendar/R$string;->preference_edit_no_ringtone_string:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mNoRingtoneString:Ljava/lang/String;

    .line 126
    sget v1, Lcom/android/calendar/R$string;->notification_tone_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mCustomRingtoneString:Ljava/lang/String;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mNotifySwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mUseStandardRow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mUseStandardSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mRingtoneHeader:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mRingtoneButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mVibrateRow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mVibrateSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private registerForActivityResult()Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;
    .locals 1

    .prologue
    .line 322
    .line 323
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->getAspectValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;

    invoke-interface {v0}, Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;->getActivityResultNotifierActivity()Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    move-result-object v0

    .line 324
    invoke-interface {v0, p0}, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;->registerActivityResultListener(Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;)V

    .line 326
    return-object v0
.end method

.method private unregisterForActivityResult()V
    .locals 1

    .prologue
    .line 330
    .line 331
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->getAspectValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;

    invoke-interface {v0}, Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;->getActivityResultNotifierActivity()Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    move-result-object v0

    .line 332
    invoke-interface {v0, p0}, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;->unregisterActivityResultListener(Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;)V

    .line 333
    return-void
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;)Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 44
    check-cast p2, Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;)Z

    move-result v0

    return v0
.end method

.method public getRingtoneTitleFromUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mNoRingtoneString:Ljava/lang/String;

    .line 318
    :goto_0
    return-object v0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mCustomRingtoneString:Ljava/lang/String;

    goto :goto_0

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mApplicationContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_2

    .line 316
    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 273
    if-eqz p1, :cond_0

    .line 274
    sget-object v0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->TAG:Ljava/lang/String;

    const-string v1, "Received onActivityResult for result code other than ringtone picker"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 297
    :goto_0
    return-void

    .line 279
    :cond_0
    if-eqz p3, :cond_2

    .line 280
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 281
    const/4 v0, 0x0

    .line 282
    if-nez v1, :cond_3

    .line 284
    const-string v0, ""

    .line 290
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableRingtone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 294
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->unregisterForActivityResult()V

    .line 296
    iput-boolean v3, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mRingtonePickerOpen:Z

    goto :goto_0

    .line 285
    :cond_3
    instance-of v2, v1, Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 288
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$id;->notify_switch:I

    if-ne v0, v1, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableNotify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableNotify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0, p2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->set(Z)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$id;->use_standard_switch:I

    if-ne v0, v1, :cond_2

    .line 232
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableUseStandardTone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableUseStandardTone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0, p2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->set(Z)V

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$id;->vibrate_switch:I

    if-ne v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableVibrate:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableVibrate:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0, p2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->set(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 246
    iget-boolean v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mRingtonePickerOpen:Z

    if-eqz v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mRingtonePickerOpen:Z

    .line 255
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->registerForActivityResult()Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    move-result-object v1

    .line 258
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    const-string v0, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableRingtone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 261
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 262
    :goto_1
    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 263
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 264
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 263
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 265
    const/4 v0, 0x0

    invoke-interface {v1, v2, v0}, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableRingtone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method protected onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableNotify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mNotifyListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 202
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableUseStandardTone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mUseStandardListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 203
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableRingtone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mRingtoneListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 204
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableVibrate:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mVibrateListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 206
    iput-object v2, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableNotify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 207
    iput-object v2, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableUseStandardTone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 208
    iput-object v2, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableRingtone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 209
    iput-object v2, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableVibrate:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 210
    iput-object v2, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mApplicationContext:Landroid/content/Context;

    .line 213
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->unregisterForActivityResult()V

    .line 214
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p2, Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/calendar/editor/AspectEditSegment;->onFinishInflate()V

    .line 133
    sget v0, Lcom/android/calendar/R$id;->notify_switch:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mNotifySwitch:Landroid/widget/Switch;

    .line 134
    sget v0, Lcom/android/calendar/R$id;->use_standard_row:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mUseStandardRow:Landroid/view/View;

    .line 135
    sget v0, Lcom/android/calendar/R$id;->use_standard_switch:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mUseStandardSwitch:Landroid/widget/Switch;

    .line 136
    sget v0, Lcom/android/calendar/R$id;->ringtone_header:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mRingtoneHeader:Landroid/widget/TextView;

    .line 137
    sget v0, Lcom/android/calendar/R$id;->ringtone_button:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mRingtoneButton:Landroid/widget/TextView;

    .line 138
    sget v0, Lcom/android/calendar/R$id;->vibrate_row:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mVibrateRow:Landroid/view/View;

    .line 139
    sget v0, Lcom/android/calendar/R$id;->vibrate_switch:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mVibrateSwitch:Landroid/widget/Switch;

    .line 141
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mNotifySwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mUseStandardSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mRingtoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mVibrateSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 145
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/android/calendar/editor/AspectEditSegment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 160
    if-eqz p1, :cond_0

    const-string v0, "key_ringtone_picker_open"

    .line 161
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "key_ringtone_picker_open"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mRingtonePickerOpen:Z

    .line 164
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/android/calendar/editor/AspectEditSegment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 151
    iget-boolean v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mRingtonePickerOpen:Z

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "key_ringtone_picker_open"

    iget-boolean v1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mRingtonePickerOpen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    :cond_0
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;)V
    .locals 2

    .prologue
    .line 171
    invoke-interface {p2}, Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;->mutableNotify()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableNotify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 172
    invoke-interface {p2}, Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;->mutableUseStandardTone()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableUseStandardTone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 173
    invoke-interface {p2}, Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;->mutableRingtoneUri()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableRingtone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 174
    invoke-interface {p2}, Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;->mutableVibrate()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableVibrate:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 177
    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mVibrateRow:Landroid/view/View;

    invoke-interface {p2}, Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;->canVibrate()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableNotify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mNotifyListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 182
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableUseStandardTone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mUseStandardListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 183
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableRingtone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mRingtoneListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 184
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableVibrate:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mVibrateListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 186
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mNotifyListener:Lcom/google/calendar/v2/client/service/common/Listener;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableNotify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/Listener;->onChange(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mUseStandardListener:Lcom/google/calendar/v2/client/service/common/Listener;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableUseStandardTone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/Listener;->onChange(Ljava/lang/Object;)V

    .line 188
    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mRingtoneListener:Lcom/google/calendar/v2/client/service/common/Listener;

    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableRingtone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/Listener;->onChange(Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mVibrateListener:Lcom/google/calendar/v2/client/service/common/Listener;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mMutableVibrate:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/Listener;->onChange(Ljava/lang/Object;)V

    .line 191
    iget-boolean v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mRingtonePickerOpen:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->registerForActivityResult()Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    .line 196
    :cond_0
    return-void

    .line 177
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected bridge synthetic onSetInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p2, Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectNotificationPrefs;)V

    return-void
.end method
