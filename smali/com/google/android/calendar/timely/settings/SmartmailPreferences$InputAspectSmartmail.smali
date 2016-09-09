.class public Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;
.super Ljava/lang/Object;
.source "SmartmailPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/settings/SmartmailPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputAspectSmartmail"
.end annotation


# instance fields
.field private mCurrentSettingPair:Lcom/google/android/calendar/timely/settings/SmartmailPreferences$ObservableSmartmailDeliveryPair;

.field private mLastUserUpdate:Ljava/lang/String;

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

.field private mOriginalSetting:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    if-nez p1, :cond_0

    const-string p1, "CREATE_PRIVATE"

    :cond_0
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mOriginalSetting:Ljava/lang/String;

    .line 444
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mOriginalSetting:Ljava/lang/String;

    const-string v1, "CREATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    invoke-static {v2}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mMutableAddAutomatically:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 446
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->DEFAULT:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mMutablePrivacy:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 464
    :goto_0
    invoke-static {v2}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mMutableApplyAll:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 465
    invoke-static {v3}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mMutableIsSharedCalendar:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 468
    new-instance v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$ObservableSmartmailDeliveryPair;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$ObservableSmartmailDeliveryPair;-><init>(Lcom/google/android/calendar/timely/settings/SmartmailPreferences$1;)V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mCurrentSettingPair:Lcom/google/android/calendar/timely/settings/SmartmailPreferences$ObservableSmartmailDeliveryPair;

    .line 469
    return-void

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mOriginalSetting:Ljava/lang/String;

    const-string v1, "CREATE_PRIVATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    invoke-static {v2}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mMutableAddAutomatically:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 449
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->BUSY:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mMutablePrivacy:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    goto :goto_0

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mOriginalSetting:Ljava/lang/String;

    const-string v1, "CREATE_SECRET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 451
    invoke-static {v2}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mMutableAddAutomatically:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 452
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->SECRET:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mMutablePrivacy:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    goto :goto_0

    .line 453
    :cond_3
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mOriginalSetting:Ljava/lang/String;

    const-string v1, "IGNORE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 454
    invoke-static {v3}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mMutableAddAutomatically:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 455
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->DEFAULT:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mMutablePrivacy:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    goto :goto_0

    .line 458
    :cond_4
    invoke-static {v2}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mMutableAddAutomatically:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 459
    sget-object v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->DEFAULT_VISIBILITY:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mMutablePrivacy:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 460
    const-string v0, "CREATE_PRIVATE"

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mOriginalSetting:Ljava/lang/String;

    goto :goto_0
.end method

.method private computeCurrentSettingString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mMutableAddAutomatically:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 514
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mMutablePrivacy:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    .line 515
    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->DEFAULT:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    if-ne v0, v1, :cond_0

    .line 516
    const-string v0, "CREATE"

    .line 525
    :goto_0
    return-object v0

    .line 517
    :cond_0
    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->BUSY:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    if-ne v0, v1, :cond_1

    .line 518
    const-string v0, "CREATE_PRIVATE"

    goto :goto_0

    .line 519
    :cond_1
    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->SECRET:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    if-ne v0, v1, :cond_2

    .line 520
    const-string v0, "CREATE_SECRET"

    goto :goto_0

    .line 523
    :cond_2
    const-string v0, "CREATE_PRIVATE"

    goto :goto_0

    .line 525
    :cond_3
    const-string v0, "IGNORE"

    goto :goto_0
.end method

.method private computeSmartmailChangeBehavior()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 546
    const-string v0, "IGNORE"

    .line 547
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->getLastUserUpdate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 548
    :goto_0
    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mMutableAddAutomatically:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v3

    .line 550
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->hasChangedSinceLastUpdate()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v0, v2

    .line 579
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 547
    goto :goto_0

    .line 554
    :cond_1
    if-eqz v0, :cond_4

    .line 556
    if-eqz v3, :cond_3

    .line 558
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mMutableApplyAll:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    const-string v0, "APPLY_TO_ALL_EVENTS"

    goto :goto_1

    .line 563
    :cond_2
    const-string v0, "APPLY_TO_NEW_EVENTS"

    goto :goto_1

    .line 567
    :cond_3
    const-string v0, "APPLY_TO_ALL_EVENTS"

    goto :goto_1

    .line 571
    :cond_4
    if-eqz v3, :cond_5

    .line 573
    const-string v0, "APPLY_TO_UPCOMING_EVENTS"

    goto :goto_1

    .line 578
    :cond_5
    # getter for: Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Error calculating smartmailChangeBehavior."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v2

    .line 579
    goto :goto_1
.end method


# virtual methods
.method public computeCurrentSetting()Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;
    .locals 4

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->computeCurrentSettingString()Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-direct {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->computeSmartmailChangeBehavior()Ljava/lang/String;

    move-result-object v1

    .line 589
    new-instance v2, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/calendar/timely/settings/SmartmailPreferences$1;)V

    return-object v2
.end method

.method public currentSettingPair()Lcom/google/android/calendar/timely/settings/SmartmailPreferences$ObservableSmartmailDeliveryPair;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mCurrentSettingPair:Lcom/google/android/calendar/timely/settings/SmartmailPreferences$ObservableSmartmailDeliveryPair;

    return-object v0
.end method

.method public getLastUserUpdate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mLastUserUpdate:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 605
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->getOriginalSettingString()Ljava/lang/String;

    move-result-object v0

    .line 608
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mLastUserUpdate:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOriginalSettingString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mOriginalSetting:Ljava/lang/String;

    return-object v0
.end method

.method public hasChanged()Z
    .locals 2

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->computeCurrentSettingString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->getOriginalSettingString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasChangedSinceLastUpdate()Z
    .locals 2

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->computeCurrentSettingString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->getLastUserUpdate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mutableAddAutomatically()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mMutableAddAutomatically:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    return-object v0
.end method

.method public mutableApplyAll()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mMutableApplyAll:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    return-object v0
.end method

.method public mutableIsSharedCalendar()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mMutableIsSharedCalendar:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    return-object v0
.end method

.method public mutablePrivacy()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/PrivacyType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mMutablePrivacy:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public onUserUpdate()V
    .locals 2

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->computeCurrentSetting()Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;

    move-result-object v0

    .line 623
    invoke-virtual {v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;->getSmartmailSetting()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mLastUserUpdate:Ljava/lang/String;

    .line 624
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->currentSettingPair()Lcom/google/android/calendar/timely/settings/SmartmailPreferences$ObservableSmartmailDeliveryPair;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$ObservableSmartmailDeliveryPair;->notifyListeners(Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;)V

    .line 625
    return-void
.end method

.method public resetOriginal()V
    .locals 1

    .prologue
    .line 615
    invoke-direct {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->computeCurrentSettingString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mOriginalSetting:Ljava/lang/String;

    .line 616
    return-void
.end method
