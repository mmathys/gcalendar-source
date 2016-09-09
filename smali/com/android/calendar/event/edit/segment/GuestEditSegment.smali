.class public Lcom/android/calendar/event/edit/segment/GuestEditSegment;
.super Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;
.source "GuestEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/edit/segment/GuestEditSegment$FindTimeListener;,
        Lcom/android/calendar/event/edit/segment/GuestEditSegment$EventCalendarListener;,
        Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;,
        Lcom/android/calendar/event/edit/segment/GuestEditSegment$AttendeesListener;,
        Lcom/android/calendar/event/edit/segment/GuestEditSegment$GuestsCanInviteOthersListener;,
        Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;,
        Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment",
        "<",
        "Lcom/android/ex/chips/RecipientEntry;",
        "Lcom/android/calendar/event/data/EventEditManager;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;"
    }
.end annotation


# static fields
.field private static final FINISHED_STRING:Ljava/util/regex/Pattern;

.field private static final IS_VALID_EMAIL:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mA11yAnnouncementAddedGuest:Ljava/lang/String;

.field private final mAllDayListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private final mAttendeesListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private mChipConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

.field private mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/event/edit/segment/ChipCollectionEditText",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;",
            "Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;",
            ">;"
        }
    .end annotation
.end field

.field private final mChipInputListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
            "<",
            "Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContactChipComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private mFindATimeButton:Landroid/widget/Button;

.field private mFindATimeButtonLeftPadding:Landroid/view/View;

.field private final mFocusedMaxLines:I

.field private final mFullscreenMaxLines:I

.field private final mGuestAdapter:Lcom/android/ex/chips/BaseRecipientAdapter;

.field private mGuestsCanInviteContainer:Landroid/view/View;

.field private mGuestsCanInviteOthers:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private final mGuestsCanInviteOthersListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mGuestsCanInviteSwitch:Landroid/widget/Switch;

.field private mIgnoreChipInputEvents:I

.field private mIsChipInputUsed:Z

.field private mIsFindTimeUsed:Z

.field private mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

.field private final mRecurrenceListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnfocusedMaxLines:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-class v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->TAG:Ljava/lang/String;

    .line 112
    const-string v0, ".+[^\\w.@]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->FINISHED_STRING:Ljava/util/regex/Pattern;

    .line 114
    new-instance v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$1;

    invoke-direct {v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$1;-><init>()V

    sput-object v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->IS_VALID_EMAIL:Lcom/google/common/base/Predicate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 174
    const-class v0, Lcom/android/calendar/event/data/EventEditManager;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;)V

    .line 138
    new-instance v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$AttendeesListener;

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$AttendeesListener;-><init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/android/calendar/event/edit/segment/GuestEditSegment$1;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mAttendeesListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 140
    new-instance v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$GuestsCanInviteOthersListener;

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$GuestsCanInviteOthersListener;-><init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/android/calendar/event/edit/segment/GuestEditSegment$1;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestsCanInviteOthersListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 142
    new-instance v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$FindTimeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$FindTimeListener;-><init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/android/calendar/event/edit/segment/GuestEditSegment$1;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mAllDayListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 143
    new-instance v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$2;-><init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mStartTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 151
    new-instance v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$FindTimeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$FindTimeListener;-><init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/android/calendar/event/edit/segment/GuestEditSegment$1;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mEndTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 152
    new-instance v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$FindTimeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$FindTimeListener;-><init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/android/calendar/event/edit/segment/GuestEditSegment$1;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mRecurrenceListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 153
    new-instance v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$EventCalendarListener;

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$EventCalendarListener;-><init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/android/calendar/event/edit/segment/GuestEditSegment$1;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mEventCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mIgnoreChipInputEvents:I

    .line 162
    new-instance v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;-><init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/android/calendar/event/edit/segment/GuestEditSegment$1;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInputListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 176
    invoke-static {p1}, Lcom/android/calendar/RecipientAdapterFactory;->create(Landroid/content/Context;)Lcom/android/ex/chips/BaseRecipientAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestAdapter:Lcom/android/ex/chips/BaseRecipientAdapter;

    .line 178
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestAdapter:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v0, p0}, Lcom/android/ex/chips/BaseRecipientAdapter;->registerUpdateObserver(Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;)V

    .line 179
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getContactPhotoCache()Lcom/android/bitmap/BitmapCache;

    move-result-object v0

    .line 180
    new-instance v1, Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter;

    .line 181
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Lcom/android/bitmap/BitmapCache;)V

    .line 182
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestAdapter:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->setDropdownChipLayouter(Lcom/android/ex/chips/DropdownChipLayouter;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$integer;->guest_edit_unfocused_lines:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mUnfocusedMaxLines:I

    .line 185
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$integer;->guest_edit_focused_lines:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mFocusedMaxLines:I

    .line 186
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$integer;->guest_edit_fullscreen_lines:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mFullscreenMaxLines:I

    .line 188
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->guest_added_accessibility_announcement:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mA11yAnnouncementAddedGuest:Ljava/lang/String;

    .line 189
    return-void
.end method

.method static synthetic access$1200(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/contacts/Contact;
    .locals 1

    .prologue
    .line 108
    invoke-static {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->createEmailContact(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestsCanInviteSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->updateToggleButtonVisibility()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->updateFindATimeButton()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->beginIgnoreChipChanges()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Z
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->isImplicit(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/google/calendar/v2/client/service/api/events/Attendee;)Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->createChipForAttendee(Lcom/google/calendar/v2/client/service/api/events/Attendee;)Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->endIgnoreChipChanges()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)Z
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->shouldIgnoreChipChanges()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->addContactChipToModel(Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->removeContactChipFromModel(Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->refreshInputFromModel()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestsCanInviteOthers:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Landroid/text/Spanned;)I
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->findUserInputTextOffset(Landroid/text/Spanned;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->FINISHED_STRING:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Landroid/text/Editable;I)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->applyRfc822EmailAddresses(Landroid/text/Editable;I)V

    return-void
.end method

.method private addContactChipToModel(Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;)V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    if-nez v0, :cond_0

    .line 513
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-virtual {p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->invite(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)V

    .line 512
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->logDidManuallyChangeGuests()V

    goto :goto_0
.end method

.method private announceGuestAdded(Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;)V
    .locals 4

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mA11yAnnouncementAddedGuest:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->getChipText()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 401
    return-void
.end method

.method private applyRfc822EmailAddresses(Landroid/text/Editable;I)V
    .locals 4

    .prologue
    .line 483
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 485
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 486
    sget-object v1, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->IS_VALID_EMAIL:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v0

    .line 487
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    :cond_0
    return-void

    .line 492
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const-string v2, ""

    invoke-interface {p1, p2, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 493
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 494
    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->createChipForRfc822Token(Landroid/text/util/Rfc822Token;)Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    move-result-object v0

    .line 495
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-virtual {v2, v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->containsChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 496
    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->announceGuestAdded(Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;)V

    .line 497
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-virtual {v2, v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->appendChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    goto :goto_0

    .line 499
    :cond_2
    sget-object v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->TAG:Ljava/lang/String;

    const-string v2, "A duplicate has been added, ignoring"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private beginIgnoreChipChanges()V
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mIgnoreChipInputEvents:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mIgnoreChipInputEvents:I

    .line 524
    return-void
.end method

.method private buildDisplayNames(Ljava/util/List;Landroid/support/v4/util/SimpleArrayMap;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 888
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 889
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 890
    invoke-virtual {p2, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 892
    :cond_0
    return-object v1
.end method

.method private createChipForAttendee(Lcom/google/calendar/v2/client/service/api/events/Attendee;)Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canUninvite()Z

    move-result v0

    .line 446
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->fromAttendee(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/events/Attendee;Z)Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    move-result-object v0

    .line 447
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->setConfig(Lcom/android/calendar/event/edit/segment/ChipConfig;)V

    .line 448
    return-object v0
.end method

.method private createChipForRecipientEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;
    .locals 2

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->fromRecipientEntry(Landroid/content/Context;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    move-result-object v0

    .line 453
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->setConfig(Lcom/android/calendar/event/edit/segment/ChipConfig;)V

    .line 454
    return-object v0
.end method

.method private createChipForRfc822Token(Landroid/text/util/Rfc822Token;)Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;
    .locals 2

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->fromRfc822Token(Landroid/content/Context;Landroid/text/util/Rfc822Token;)Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->setConfig(Lcom/android/calendar/event/edit/segment/ChipConfig;)V

    .line 460
    return-object v0
.end method

.method private createContactChips()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 425
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

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

    .line 426
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getPrincipal()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->isImplicit(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 433
    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->createChipForAttendee(Lcom/google/calendar/v2/client/service/api/events/Attendee;)Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 437
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static createEmailContact(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/contacts/Contact;
    .locals 1

    .prologue
    .line 1034
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;

    invoke-direct {v0}, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;-><init>()V

    .line 1035
    invoke-virtual {v0, p0}, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;->setKey(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;

    move-result-object v0

    .line 1036
    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;->setFullName(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;

    move-result-object v0

    .line 1037
    invoke-virtual {v0, p2}, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;->setPrimaryEmail(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;

    move-result-object v0

    .line 1038
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;->build()Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;

    move-result-object v0

    .line 1034
    return-object v0
.end method

.method private endIgnoreChipChanges()V
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mIgnoreChipInputEvents:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 528
    iget v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mIgnoreChipInputEvents:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mIgnoreChipInputEvents:I

    .line 529
    return-void

    .line 527
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private filterByDisplayName()Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;
    .locals 8

    .prologue
    .line 846
    new-instance v3, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    .line 847
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 848
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    .line 849
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getPrincipal()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v2

    .line 850
    const/4 v1, 0x0

    .line 851
    instance-of v6, v2, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    if-eqz v6, :cond_1

    move-object v1, v2

    .line 852
    check-cast v1, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 854
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 857
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getType()Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    move-result-object v6

    sget-object v7, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->ROOM:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    if-ne v6, v7, :cond_3

    .line 858
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getFallbackNameInternal()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 859
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 861
    :cond_2
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getFallbackNameInternal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 863
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getChip(Ljava/lang/Object;)Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    .line 864
    invoke-virtual {v0, v2}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getChip(Ljava/lang/Object;)Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    # getter for: Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->access$900(Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 865
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getChip(Ljava/lang/Object;)Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    # getter for: Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->access$900(Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 867
    :cond_4
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 870
    :cond_5
    new-instance v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;

    invoke-direct {v0, v3, v4}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;-><init>(Landroid/support/v4/util/SimpleArrayMap;Ljava/util/List;)V

    return-object v0
.end method

.method private findUserInputTextOffset(Landroid/text/Spanned;)I
    .locals 1

    .prologue
    .line 372
    const-class v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    invoke-static {p1, v0}, Lcom/android/calendar/SpanUtils;->getLastSpanOfType(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    .line 373
    if-nez v0, :cond_0

    .line 374
    const/4 v0, 0x0

    .line 376
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method private forceLogFindATimeButtonClick()V
    .locals 6

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 824
    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    .line 825
    sget v2, Lcom/android/calendar/R$string;->analytics_category_find_a_time:I

    .line 827
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_action_ft_flow:I

    .line 828
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->analytics_label_ft_entered:I

    .line 829
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 825
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 831
    return-void
.end method

.method private getContactChipComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mContactChipComparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$5;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$5;-><init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mContactChipComparator:Ljava/util/Comparator;

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mContactChipComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method private getRoomCount()I
    .locals 4

    .prologue
    .line 678
    const/4 v0, 0x0

    .line 679
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    .line 680
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getType()Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    move-result-object v0

    sget-object v3, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->ROOM:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    if-ne v0, v3, :cond_1

    .line 681
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 683
    goto :goto_0

    .line 684
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private isImplicit(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;->getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isOrganizerInAttendees()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 660
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getOrganizer()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    instance-of v0, v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getOrganizer()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 663
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    .line 674
    :goto_1
    return v0

    :cond_0
    move-object v1, v2

    .line 662
    goto :goto_0

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    .line 667
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getPrincipal()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v5

    instance-of v5, v5, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    if-eqz v5, :cond_3

    .line 668
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getPrincipal()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 670
    :goto_2
    invoke-static {v1, v0}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 671
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 669
    goto :goto_2

    :cond_4
    move v0, v3

    .line 674
    goto :goto_1
.end method

.method private loadDisplayNames(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 874
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->filterByDisplayName()Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;

    move-result-object v3

    .line 876
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;->emailsWithoutDisplayNames:Ljava/util/List;
    invoke-static {v3}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;->access$1000(Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;)Ljava/util/List;

    move-result-object v1

    .line 875
    invoke-static {v0, v1}, Lcom/android/calendar/ContactNameResolver;->loadDisplayNames(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    .line 877
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    # getter for: Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;->emailsWithoutDisplayNames:Ljava/util/List;
    invoke-static {v3}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;->access$1000(Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 878
    # getter for: Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;->emailsWithoutDisplayNames:Ljava/util/List;
    invoke-static {v3}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;->access$1000(Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 879
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 880
    # getter for: Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;->emailToDisplayName:Landroid/support/v4/util/SimpleArrayMap;
    invoke-static {v3}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;->access$1100(Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 883
    :cond_0
    # getter for: Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;->emailToDisplayName:Landroid/support/v4/util/SimpleArrayMap;
    invoke-static {v3}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;->access$1100(Lcom/android/calendar/event/edit/segment/GuestEditSegment$DisplayNameFilterResult;)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->buildDisplayNames(Ljava/util/List;Landroid/support/v4/util/SimpleArrayMap;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private logDidManuallyChangeGuests()V
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mEditInput:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditLogMetrics;->logDidChangeContacts()V

    .line 689
    return-void
.end method

.method private refreshInputFromModel()V
    .locals 3

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->createContactChips()Ljava/util/List;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-static {v1, v0}, Lcom/google/common/collect/Iterables;->elementsEqual(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getContactChipComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 280
    :cond_0
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->setInputText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    .line 282
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-virtual {v2, v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->appendChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    goto :goto_0

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    .line 288
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    if-eqz v0, :cond_2

    .line 289
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestAdapter:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->setAccount(Landroid/accounts/Account;)V

    .line 291
    :cond_2
    return-void
.end method

.method private removeContactChipFromModel(Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;)V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-virtual {p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;->getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->uninvite(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)V

    .line 517
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->logDidManuallyChangeGuests()V

    .line 518
    return-void
.end method

.method private shouldIgnoreChipChanges()Z
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mIgnoreChipInputEvents:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowFindATime()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 605
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 606
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->isFindTimeSupported()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 656
    :goto_0
    return v0

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0, p0}, Lcom/android/calendar/editor/EditSegmentController;->isFullScreen(Lcom/android/calendar/editor/EditSegment;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 611
    goto :goto_0

    .line 613
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    .line 615
    goto :goto_0

    .line 617
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->size()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 620
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getPrincipal()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->isImplicit(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 621
    goto :goto_0

    .line 624
    :cond_5
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getRoomCount()I

    move-result v3

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->size()I

    move-result v4

    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->isOrganizerInAttendees()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_1
    sub-int v0, v4, v0

    if-ne v3, v0, :cond_7

    move v0, v1

    .line 627
    goto :goto_0

    :cond_6
    move v0, v1

    .line 624
    goto :goto_1

    .line 629
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isNewEvent()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 631
    goto :goto_0

    .line 633
    :cond_8
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableIsAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 635
    goto :goto_0

    .line 637
    :cond_9
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableEndTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    .line 639
    goto/16 :goto_0

    .line 641
    :cond_a
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableEndTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    .line 642
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 643
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_b

    move v0, v1

    .line 644
    goto/16 :goto_0

    .line 646
    :cond_b
    const-wide/32 v6, 0x5265c00

    cmp-long v0, v4, v6

    if-lez v0, :cond_c

    move v0, v1

    .line 648
    goto/16 :goto_0

    .line 650
    :cond_c
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    .line 651
    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->getNowDateTime(Landroid/content/Context;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 650
    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->roundDownToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 651
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v4

    .line 652
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-gez v0, :cond_d

    move v0, v1

    .line 654
    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 656
    goto/16 :goto_0
.end method

.method private updateChipInputHeight()V
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0, p0}, Lcom/android/calendar/editor/EditSegmentController;->isFullScreen(Lcom/android/calendar/editor/EditSegment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    iget v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mFullscreenMaxLines:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->setMaxLines(I)V

    .line 720
    :goto_0
    return-void

    .line 718
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mFocusedMaxLines:I

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->setMaxLines(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mUnfocusedMaxLines:I

    goto :goto_1
.end method

.method private updateFindATimeButton()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 562
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->shouldShowFindATime()Z

    move-result v2

    .line 567
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mFindATimeButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isShown()Z

    move-result v0

    if-eq v2, v0, :cond_2

    .line 569
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 568
    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getCalendarClientLogger(Landroid/content/Context;)Lcom/android/calendar/CalendarClientLogger;

    move-result-object v3

    .line 570
    const/4 v0, 0x0

    .line 571
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v1

    instance-of v1, v1, Lcom/android/calendar/event/data/AndroidCalendarKey;

    if-eqz v1, :cond_5

    .line 572
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    move-object v1, v0

    .line 574
    :goto_1
    if-eqz v2, :cond_3

    .line 575
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mFindATimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mFindATimeButtonLeftPadding:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mEditInput:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditLogMetrics;->logFindTimeButtonShown()V

    .line 578
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mEditInput:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/event/data/EventEditManager;

    .line 587
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditLogMetrics;->getCalendarEventReference()Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-virtual {v3, v0, v1}, Lcom/android/calendar/CalendarClientLogger;->logFindTimeButtonShown(Ljava/lang/String;Landroid/accounts/Account;)V

    .line 598
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mFindATimeButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 599
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mFindATimeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mIsFindTimeUsed:Z

    if-eqz v0, :cond_4

    .line 600
    sget v0, Lcom/android/calendar/R$color;->quantum_grey600:I

    .line 599
    :goto_3
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 590
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mFindATimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mFindATimeButtonLeftPadding:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 592
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 593
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mEditInput:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/event/data/EventEditManager;

    .line 594
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditLogMetrics;->getCalendarEventReference()Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-virtual {v3, v0, v1}, Lcom/android/calendar/CalendarClientLogger;->logFindTimeButtonHidden(Ljava/lang/String;Landroid/accounts/Account;)V

    goto :goto_2

    .line 600
    :cond_4
    sget v0, Lcom/android/calendar/R$color;->google_blue:I

    goto :goto_3

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method

.method private updateToggleButtonVisibility()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0, p0}, Lcom/android/calendar/editor/EditSegmentController;->isFullScreen(Lcom/android/calendar/editor/EditSegment;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->updateToggleButtonVisibility(Z)V

    .line 539
    return-void
.end method

.method private updateToggleButtonVisibility(Z)V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestsCanInviteContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 547
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 350
    invoke-super {p0, p1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->afterTextChanged(Landroid/text/Editable;)V

    .line 351
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/event/edit/segment/GuestEditSegment$4;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$4;-><init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Landroid/text/Editable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 362
    return-void
.end method

.method protected canBeChanged(Lcom/android/calendar/event/data/EventEditManager;)Z
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p1}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 318
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->hasHiddenPrivateDetails()Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canInvite()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 318
    :goto_0
    return v0

    .line 319
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic canBeChanged(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 108
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->canBeChanged(Lcom/android/calendar/event/data/EventEditManager;)Z

    move-result v0

    return v0
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 694
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 738
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mFindATimeButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 739
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getStartTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 740
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getEndTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    .line 742
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isAllDay()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/android/calendar/Utils;->isValidEventTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 744
    new-instance v1, Lcom/android/calendar/event/edit/segment/WhenEditSegment$InvalidDatesChosenDialog;

    invoke-direct {v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment$InvalidDatesChosenDialog;-><init>()V

    .line 745
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v2, Lcom/android/calendar/event/edit/segment/WhenEditSegment$InvalidDatesChosenDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/calendar/event/FindTimeActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "type"

    const/4 v5, 0x0

    .line 751
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 753
    const-string v4, "start_millis"

    .line 754
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v6

    .line 753
    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 755
    const-string v4, "timezone"

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    if-eqz v1, :cond_2

    .line 759
    const-string v0, "end_millis"

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 762
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    .line 764
    instance-of v1, v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    if-eqz v1, :cond_9

    .line 765
    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 767
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/identity/accounts/api/AccountData;->forAccount(Ljava/lang/String;)Lcom/google/android/gms/identity/accounts/api/AccountData;

    move-result-object v4

    .line 766
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/identity/accounts/api/AccountDataUtil;->addAccountData(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/identity/accounts/api/AccountData;)Z

    .line 768
    const-string v1, "account_type"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v1, v0

    .line 771
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 772
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    .line 773
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getPrincipal()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    .line 775
    instance-of v6, v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    if-eqz v6, :cond_8

    .line 776
    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 778
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 779
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 783
    :cond_4
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->isOrganizerInAttendees()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getOrganizer()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    instance-of v0, v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    if-eqz v0, :cond_5

    .line 784
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getOrganizer()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 785
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 786
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    :cond_5
    const-string v0, "attendees"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 791
    const-string v0, "attendee_display_names"

    .line 793
    invoke-direct {p0, v4}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->loadDisplayNames(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 791
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 795
    const-string v0, "event_color"

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    .line 796
    invoke-static {v2}, Lcom/android/calendar/Utils;->getEventColor(Lcom/google/calendar/v2/client/service/api/events/Event;)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v2

    .line 795
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 798
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mEditInput:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditLogMetrics;->isCalendarEventReferenceLogged()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 799
    const-string v2, "event_reference_id"

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mEditInput:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/event/data/EventEditManager;

    .line 800
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditLogMetrics;->getCalendarEventReference()Ljava/lang/String;

    move-result-object v0

    .line 799
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 803
    :cond_6
    const-string v0, "is_recurring_event"

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isRecurring()Z

    move-result v2

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 805
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x3ed

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mIsFindTimeUsed:Z

    .line 808
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->updateFindATimeButton()V

    .line 809
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mEditInput:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditLogMetrics;->logFindTimeButtonClicked()V

    .line 810
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->forceLogFindATimeButtonClick()V

    .line 811
    if-eqz v1, :cond_0

    .line 813
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 812
    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getCalendarClientLogger(Landroid/content/Context;)Lcom/android/calendar/CalendarClientLogger;

    move-result-object v2

    .line 814
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mEditInput:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/event/data/EventEditManager;

    .line 815
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditLogMetrics;->getCalendarEventReference()Ljava/lang/String;

    move-result-object v0

    .line 814
    invoke-virtual {v2, v0, v1}, Lcom/android/calendar/CalendarClientLogger;->logFindTimeButtonClicked(Ljava/lang/String;Landroid/accounts/Account;)V

    goto/16 :goto_0

    .line 818
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_8
    move-object v0, v2

    goto/16 :goto_3

    :cond_9
    move-object v1, v2

    goto/16 :goto_1
.end method

.method public onDidEnterFullScreen(Landroid/widget/FrameLayout;)V
    .locals 0

    .prologue
    .line 724
    invoke-super {p0, p1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onDidEnterFullScreen(Landroid/widget/FrameLayout;)V

    .line 725
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->updateChipInputHeight()V

    .line 726
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->updateFindATimeButton()V

    .line 727
    return-void
.end method

.method public onDidExitFullScreen(Landroid/widget/FrameLayout;)V
    .locals 0

    .prologue
    .line 731
    invoke-super {p0, p1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onDidExitFullScreen(Landroid/widget/FrameLayout;)V

    .line 732
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->updateChipInputHeight()V

    .line 733
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->updateFindATimeButton()V

    .line 734
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 295
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    if-nez v0, :cond_0

    .line 312
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mAttendeesListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 300
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    .line 301
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestsCanInviteOthers:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestsCanInviteOthersListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 302
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestsCanInviteOthers:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 304
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableIsAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mAllDayListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 305
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mStartTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 306
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableEndTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mEndTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 307
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mRecurrenceListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 309
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mEventCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 310
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 311
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    goto :goto_0
.end method

.method protected bridge synthetic onDisposeInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->onDisposeInput(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method

.method protected onEndFullscreenEdit()V
    .locals 2

    .prologue
    .line 337
    invoke-super {p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onEndFullscreenEdit()V

    .line 338
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->beginIgnoreTextChanges()V

    .line 340
    :try_start_0
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getInputText()Landroid/text/Editable;

    move-result-object v0

    .line 341
    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->findUserInputTextOffset(Landroid/text/Spanned;)I

    move-result v1

    .line 342
    invoke-direct {p0, v0, v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->applyRfc822EmailAddresses(Landroid/text/Editable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->endIgnoreTextChanges()V

    .line 346
    return-void

    .line 344
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->endIgnoreTextChanges()V

    throw v0
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 195
    invoke-super {p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onFinishInflate()V

    .line 196
    sget v0, Lcom/android/calendar/R$id;->guest_input:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    .line 197
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    const-class v1, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->initialize(Ljava/lang/Class;)V

    .line 198
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInputListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 199
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    iget v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mUnfocusedMaxLines:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->setMaxLines(I)V

    .line 200
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 202
    sget v0, Lcom/android/calendar/R$id;->guests_can_invite:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestsCanInviteContainer:Landroid/view/View;

    .line 203
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestsCanInviteContainer:Landroid/view/View;

    sget v1, Lcom/android/calendar/R$id;->text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/android/calendar/R$string;->guests_can_invite_switch_label:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 205
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestsCanInviteContainer:Landroid/view/View;

    sget v1, Lcom/android/calendar/R$id;->switch_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestsCanInviteSwitch:Landroid/widget/Switch;

    .line 206
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestsCanInviteSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/calendar/event/edit/segment/GuestEditSegment$3;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$3;-><init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 216
    sget v0, Lcom/android/calendar/R$id;->find_a_time_button:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mFindATimeButton:Landroid/widget/Button;

    .line 217
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mFindATimeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mFindATimeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 219
    sget v0, Lcom/android/calendar/R$id;->find_a_time_button_left_padding:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mFindATimeButtonLeftPadding:Landroid/view/View;

    .line 221
    const-class v0, Lcom/android/ex/chips/RecipientEntry;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestAdapter:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->initialize(Ljava/lang/Class;Lcom/android/calendar/event/edit/segment/SuggestionEditText;Landroid/widget/ListAdapter;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->guest_edit_segment_chip_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->createChipConfigTemplate()Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    move-result-object v1

    .line 226
    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setMarginRight(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->build()Lcom/android/calendar/event/edit/segment/ChipConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    .line 228
    invoke-virtual {p0, p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 698
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onFocusChange(Landroid/view/View;Z)V

    .line 699
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 701
    invoke-static {v0}, Lcom/android/calendar/Utils;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 702
    invoke-static {v0}, Lcom/android/calendar/Utils;->requestContactsPermissions(Landroid/app/Activity;)V

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    if-ne p1, v0, :cond_1

    .line 706
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->updateChipInputHeight()V

    .line 708
    :cond_1
    return-void
.end method

.method protected onRequestSuggestions(Landroid/text/Spanned;)V
    .locals 2

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->findUserInputTextOffset(Landroid/text/Spanned;)I

    move-result v0

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestAdapter:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 369
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 405
    invoke-super {p0, p1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 406
    if-eqz p1, :cond_0

    .line 407
    const-string v0, "com.android.calendar.event.edit.guests.is_find_time_used"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mIsFindTimeUsed:Z

    .line 408
    const-string v0, "com.android.calendar.event.edit.guests.is_chip_input_used"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mIsChipInputUsed:Z

    .line 410
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 414
    invoke-super {p0, p1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 415
    if-eqz p1, :cond_0

    .line 416
    const-string v0, "com.android.calendar.event.edit.guests.is_find_time_used"

    iget-boolean v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mIsFindTimeUsed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 417
    const-string v0, "com.android.calendar.event.edit.guests.is_chip_input_used"

    iget-boolean v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mIsChipInputUsed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 419
    :cond_0
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p1}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 238
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->hasHiddenPrivateDetails()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canInvite()Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    .line 246
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->observableAttendees()Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    .line 247
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mAttendeesListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 248
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableGuestsCanInviteOthers()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestsCanInviteOthers:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 249
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestsCanInviteOthers:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestsCanInviteOthersListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 250
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->observableCalendar()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 251
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mEventCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 253
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableIsAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mAllDayListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 254
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mStartTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 255
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableEndTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mEndTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 256
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mModel:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mRecurrenceListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 260
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->updateFindATimeButton()V

    .line 262
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->refreshInputFromModel()V

    .line 264
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestsCanInviteSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestsCanInviteOthers:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 265
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->updateToggleButtonVisibility()V

    goto :goto_0
.end method

.method protected bridge synthetic onSetInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->onSetInput(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method

.method protected onSuggestionAccepted(Lcom/android/ex/chips/RecipientEntry;)V
    .locals 4

    .prologue
    .line 381
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/common/Principals;->fromEmail(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->getInputText()Landroid/text/Editable;

    move-result-object v2

    .line 387
    const/4 v1, 0x0

    .line 388
    const-class v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    invoke-static {v2, v0}, Lcom/android/calendar/SpanUtils;->getLastSpanOfType(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    .line 389
    if-eqz v0, :cond_1

    .line 390
    invoke-interface {v2, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 393
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->createChipForRecipientEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;

    move-result-object v1

    .line 394
    invoke-direct {p0, v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->announceGuestAdded(Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;)V

    .line 395
    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mChipInput:Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v3, v0, v2, v1}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->replaceRangeWithChip(IILcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    .line 396
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestAdapter:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected bridge synthetic onSuggestionAccepted(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    check-cast p1, Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->onSuggestionAccepted(Lcom/android/ex/chips/RecipientEntry;)V

    return-void
.end method

.method public onWillEnterFullScreen(Landroid/widget/FrameLayout;ZLcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;Lcom/android/calendar/event/edit/EditSaveButton;)V
    .locals 1

    .prologue
    .line 325
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onWillEnterFullScreen(Landroid/widget/FrameLayout;ZLcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;Lcom/android/calendar/event/edit/EditSaveButton;)V

    .line 326
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->updateToggleButtonVisibility(Z)V

    .line 327
    return-void
.end method

.method public onWillExitFullScreen(Landroid/widget/FrameLayout;Z)V
    .locals 1

    .prologue
    .line 331
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onWillExitFullScreen(Landroid/widget/FrameLayout;Z)V

    .line 332
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->updateToggleButtonVisibility(Z)V

    .line 333
    return-void
.end method
