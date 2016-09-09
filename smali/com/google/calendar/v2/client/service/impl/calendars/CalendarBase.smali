.class abstract Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;
.super Ljava/lang/Object;
.source "CalendarBase.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/calendars/Calendar;


# instance fields
.field private final accessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

.field private cachedCalendarType:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

.field private final calendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

.field private final isPrimary:Z


# direct methods
.method protected constructor <init>(Lcom/google/calendar/v2/client/service/api/common/CalendarKey;ZLcom/google/calendar/v2/client/service/api/calendars/AccessRole;Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    .line 29
    iput-boolean p2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->isPrimary:Z

    .line 30
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->accessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    .line 31
    iput-object p4, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->cachedCalendarType:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    .line 32
    return-void
.end method


# virtual methods
.method protected baseEquals(Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;)Z
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->isPrimary:Z

    iget-boolean v1, p1, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->isPrimary:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->accessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->accessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    .line 81
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected baseToStringHelper()Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 3

    .prologue
    .line 85
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "calendarKey"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isPrimary"

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->isPrimary:Z

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "accessRole"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->accessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 85
    return-object v0
.end method

.method public canChangeMetadata()Z
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->accessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    sget-object v1, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->OWNER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canUnsubscribe()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->isPrimary:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccessRole()Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->accessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    return-object v0
.end method

.method public getKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->getKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getType()Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->cachedCalendarType:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarUtil;->calculateType(Lcom/google/calendar/v2/client/service/api/common/CalendarKey;)Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->cachedCalendarType:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->cachedCalendarType:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEditable()Z
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->accessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    sget-object v1, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->WRITER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInDefaultDailyAgendaSet()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    :goto_0
    :pswitch_0
    return v0

    .line 102
    :cond_0
    sget-object v1, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase$1;->$SwitchMap$com$google$calendar$v2$client$service$api$calendars$CalendarType:[I

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->getType()Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 108
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->isPrimary:Z

    return v0
.end method

.method public isSharedWithOthers()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method
