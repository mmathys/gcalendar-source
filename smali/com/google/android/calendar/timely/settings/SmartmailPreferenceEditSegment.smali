.class public Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;
.super Lcom/google/android/calendar/timely/settings/AccountAspectEditSegment;
.source "SmartmailPreferenceEditSegment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$ViewHolder;,
        Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/calendar/timely/settings/AccountAspectEditSegment",
        "<",
        "Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;",
        "Lcom/android/calendar/editor/AspectAdapter;",
        ">;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# static fields
.field private static final VALUES:[Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

.field private static sPrivacyLabels:[Ljava/lang/String;


# instance fields
.field private mAddAutomaticallyListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAddAutomaticallySwitch:Landroid/widget/Switch;

.field private mDefaultTextColor:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsSettingInput:Z

.field private mIsSharedCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSmartMailEnabled:Z

.field private mMutableAddAutomatically:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private mMutableApplyAll:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private mMutableIsSharedCalendar:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private mMutablePrivacy:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/PrivacyType;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceTextColor:I

.field private mPrivacyListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/PrivacyType;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedTextColor:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerLabel:Landroid/widget/TextView;

.field private mTentativeIsChecked:Ljava/lang/Boolean;

.field private mTentativePrivacyPosition:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->DEFAULT:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->BUSY:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->SECRET:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->VALUES:[Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 99
    const-class v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;

    const-class v1, Lcom/android/calendar/editor/AspectAdapter;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/calendar/timely/settings/AccountAspectEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mIsSmartMailEnabled:Z

    .line 76
    new-instance v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$1;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$1;-><init>(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mAddAutomaticallyListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 84
    new-instance v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$2;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$2;-><init>(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mPrivacyListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 92
    new-instance v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$3;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$3;-><init>(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mIsSharedCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 100
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mInflater:Landroid/view/LayoutInflater;

    .line 101
    sget-object v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->sPrivacyLabels:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$array;->preferences_visibility_labels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->sPrivacyLabels:[Ljava/lang/String;

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    sget v1, Lcom/android/calendar/R$color;->edit_text_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mDefaultTextColor:I

    .line 107
    sget v1, Lcom/android/calendar/R$color;->google_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mSelectedTextColor:I

    .line 108
    sget v1, Lcom/android/calendar/R$color;->preference_value:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mPreferenceTextColor:I

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mAddAutomaticallySwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->updateVisibilitySpinnerVisibility()V

    return-void
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->sPrivacyLabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mSelectedTextColor:I

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mDefaultTextColor:I

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mDefaultPadding:I

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mDefaultPadding:I

    return v0
.end method

.method static synthetic access$1500(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mDefaultPadding:I

    return v0
.end method

.method static synthetic access$1600(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mDefaultPadding:I

    return v0
.end method

.method static synthetic access$1700(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mDefaultPadding:I

    return v0
.end method

.method static synthetic access$1900(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mDefaultPadding:I

    return v0
.end method

.method static synthetic access$200()[Lcom/google/calendar/v2/client/service/api/events/PrivacyType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->VALUES:[Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mDefaultPadding:I

    return v0
.end method

.method static synthetic access$2100(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mDefaultPadding:I

    return v0
.end method

.method static synthetic access$2200(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mPreferenceTextColor:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mTentativePrivacyPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mTentativePrivacyPosition:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutablePrivacy:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutableApplyAll:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Lcom/google/calendar/v2/client/service/common/Listener;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mPrivacyListener:Lcom/google/calendar/v2/client/service/common/Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mTentativeIsChecked:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mTentativeIsChecked:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutableAddAutomatically:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    return-object v0
.end method

.method private showAddAutomaticallyDialog(Z)V
    .locals 4

    .prologue
    .line 299
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mTentativeIsChecked:Ljava/lang/Boolean;

    .line 301
    if-eqz p1, :cond_0

    .line 302
    sget v0, Lcom/android/calendar/R$string;->smartmail_toggle_on_dialog_text:I

    move v1, v0

    .line 304
    :goto_0
    if-eqz p1, :cond_1

    .line 305
    sget v0, Lcom/android/calendar/R$string;->smartmail_toggle_on_dialog_confirm_button_text:I

    .line 308
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 309
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$8;

    invoke-direct {v2, p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$8;-><init>(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)V

    .line 310
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$7;

    invoke-direct {v2, p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$7;-><init>(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)V

    .line 319
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 338
    return-void

    .line 303
    :cond_0
    sget v0, Lcom/android/calendar/R$string;->smartmail_toggle_off_dialog_text:I

    move v1, v0

    goto :goto_0

    .line 306
    :cond_1
    sget v0, Lcom/android/calendar/R$string;->smartmail_toggle_off_dialog_confirm_button_text:I

    goto :goto_1
.end method

.method private showVisibilityDialog(I)V
    .locals 5

    .prologue
    .line 255
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mTentativePrivacyPosition:Ljava/lang/Integer;

    .line 257
    sget v0, Lcom/android/calendar/R$string;->smartmail_change_visibility_dialog_text:I

    .line 258
    sget v1, Lcom/android/calendar/R$string;->smartmail_change_visibility_change_all_button_text:I

    .line 259
    sget v2, Lcom/android/calendar/R$string;->smartmail_change_visibility_change_new_button_text:I

    .line 261
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 262
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$6;

    invoke-direct {v3, p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$6;-><init>(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)V

    .line 263
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$5;

    invoke-direct {v3, p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$5;-><init>(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)V

    .line 272
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$4;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$4;-><init>(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)V

    .line 283
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 296
    return-void
.end method

.method private updateVisibilitySpinnerVisibility()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutableAddAutomatically:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutableIsSharedCalendar:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mIsSmartMailEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-static {v1, v0}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 127
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mSpinnerLabel:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 128
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;)Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 46
    check-cast p2, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutableAddAutomatically:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutableAddAutomatically:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 241
    iget-boolean v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mIsSettingInput:Z

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mAddAutomaticallySwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->showAddAutomaticallyDialog(Z)V

    goto :goto_0
.end method

.method protected onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutableAddAutomatically:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mAddAutomaticallyListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutablePrivacy:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mPrivacyListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutableIsSharedCalendar:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mIsSharedCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 159
    iput-object v2, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutablePrivacy:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 160
    iput-object v2, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutableAddAutomatically:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 161
    iput-object v2, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutableIsSharedCalendar:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 162
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p2, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Lcom/google/android/calendar/timely/settings/AccountAspectEditSegment;->onFinishInflate()V

    .line 114
    sget v0, Lcom/android/calendar/R$id;->add_automatically_switch:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mAddAutomaticallySwitch:Landroid/widget/Switch;

    .line 115
    sget v0, Lcom/android/calendar/R$id;->visibility_spinner:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mSpinner:Landroid/widget/Spinner;

    .line 116
    sget v0, Lcom/android/calendar/R$id;->visibility_label:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mSpinnerLabel:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mAddAutomaticallySwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment$VisibilityAdapter;-><init>(Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 120
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 121
    return-void
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
    .line 219
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutablePrivacy:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutablePrivacy:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->VALUES:[Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    aget-object v1, v1, p3

    if-eq v0, v1, :cond_0

    .line 220
    iget-boolean v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mIsSettingInput:Z

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutablePrivacy:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    sget-object v1, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->VALUES:[Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    aget-object v1, v1, p3

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-direct {p0, p3}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->showVisibilityDialog(I)V

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
    .line 233
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/google/android/calendar/timely/settings/AccountAspectEditSegment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 185
    const-string v0, "key_tentative_is_checked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const-string v0, "key_tentative_is_checked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mTentativeIsChecked:Ljava/lang/Boolean;

    .line 188
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mTentativeIsChecked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->showAddAutomaticallyDialog(Z)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const-string v0, "key_tentative_privacy_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "key_tentative_privacy_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mTentativePrivacyPosition:Ljava/lang/Integer;

    .line 192
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mTentativePrivacyPosition:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->showVisibilityDialog(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mTentativeIsChecked:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 173
    const-string v0, "key_tentative_is_checked"

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mTentativeIsChecked:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/calendar/timely/settings/AccountAspectEditSegment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 179
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mTentativePrivacyPosition:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "key_tentative_privacy_position"

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mTentativePrivacyPosition:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;)V
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mIsSettingInput:Z

    .line 137
    invoke-virtual {p2}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mutableAddAutomatically()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutableAddAutomatically:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 138
    invoke-virtual {p2}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mutablePrivacy()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutablePrivacy:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 139
    invoke-virtual {p2}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mutableApplyAll()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutableApplyAll:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 140
    invoke-virtual {p2}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mutableIsSharedCalendar()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutableIsSharedCalendar:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 141
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutableIsSharedCalendar:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mIsSharedCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutableAddAutomatically:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mAddAutomaticallyListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 144
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutablePrivacy:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mPrivacyListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mAddAutomaticallyListener:Lcom/google/calendar/v2/client/service/common/Listener;

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutableAddAutomatically:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/Listener;->onChange(Ljava/lang/Object;)V

    .line 147
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mPrivacyListener:Lcom/google/calendar/v2/client/service/common/Listener;

    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mMutablePrivacy:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/Listener;->onChange(Ljava/lang/Object;)V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mIsSettingInput:Z

    .line 150
    return-void
.end method

.method protected bridge synthetic onSetInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p2, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;)V

    return-void
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-super {p0, p1}, Lcom/google/android/calendar/timely/settings/AccountAspectEditSegment;->setAccount(Landroid/accounts/Account;)V

    .line 200
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mAccount:Landroid/accounts/Account;

    invoke-static {v0, v1}, Lcom/google/android/calendar/utils/AccountUtils;->doesAccountSupportSmartmail(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mIsSmartMailEnabled:Z

    .line 201
    iget-boolean v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mIsSmartMailEnabled:Z

    if-nez v0, :cond_0

    .line 202
    sget v0, Lcom/android/calendar/R$id;->add_automatically_switch:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 203
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 204
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->mSpinnerLabel:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 207
    sget v0, Lcom/android/calendar/R$id;->smart_mail_switch_label:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 208
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferenceEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 209
    sget v2, Lcom/android/calendar/R$string;->account_smartmail_unsupported:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    sget v2, Lcom/android/calendar/R$color;->unsupported_smart_mail_label_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    :cond_0
    return-void
.end method
