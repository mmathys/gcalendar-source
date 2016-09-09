.class public Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;
.super Ljava/lang/Object;
.source "CalendarListFilterOptions.java"


# static fields
.field static final DEFAULT:Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;


# instance fields
.field mAccountName:Ljava/lang/String;

.field mAccountType:Ljava/lang/String;

.field mPrimary:Ljava/lang/Boolean;

.field mSyncEvents:Ljava/lang/Boolean;

.field mVisible:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;

    invoke-direct {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->DEFAULT:Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->mAccountName:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->mAccountType:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->mPrimary:Ljava/lang/Boolean;

    .line 15
    iput-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->mVisible:Ljava/lang/Boolean;

    .line 16
    iput-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->mSyncEvents:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method getPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->mPrimary:Ljava/lang/Boolean;

    return-object v0
.end method

.method getSyncEvents()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->mSyncEvents:Ljava/lang/Boolean;

    return-object v0
.end method

.method getVisible()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->mVisible:Ljava/lang/Boolean;

    return-object v0
.end method

.method isEmptyFilter()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->mAccountName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->mAccountType:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->mPrimary:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->mVisible:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->mSyncEvents:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->mAccountName:Ljava/lang/String;

    .line 24
    return-object p0
.end method

.method public setAccountType(Ljava/lang/String;)Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->mAccountType:Ljava/lang/String;

    .line 33
    return-object p0
.end method
