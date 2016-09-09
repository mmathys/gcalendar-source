.class public Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;
.super Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;
.source "ImmutableCalendarImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;
    }
.end annotation


# instance fields
.field private final allDayReminders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

.field private final calendarListEntryProto:Ljava/lang/Object;

.field private final defaultEventDuration:I

.field private final foregroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

.field private final isDailyAgendaEnabled:Z

.field private final isFindTimeSupported:Z

.field private final isSelected:Z

.field private final isSharedWithOthers:Z

.field private final name:Ljava/lang/String;

.field private final reminders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)V
    .locals 4

    .prologue
    .line 36
    .line 37
    # getter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$000(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    .line 38
    # getter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isPrimary:Z
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$100(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Z

    move-result v1

    .line 39
    # getter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->accessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$200(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    move-result-object v2

    .line 40
    # getter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->calendarType:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$300(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    move-result-object v3

    .line 36
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;-><init>(Lcom/google/calendar/v2/client/service/api/common/CalendarKey;ZLcom/google/calendar/v2/client/service/api/calendars/AccessRole;Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;)V

    .line 41
    # getter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->calendarListEntryProto:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$400(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->calendarListEntryProto:Ljava/lang/Object;

    .line 42
    # getter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->backgroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$500(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->backgroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 43
    # getter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->foregroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$600(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->foregroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 44
    # getter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isSelected:Z
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$700(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isSelected:Z

    .line 45
    # getter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isSharedWithOthers:Z
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$800(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isSharedWithOthers:Z

    .line 46
    # getter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$900(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->name:Ljava/lang/String;

    .line 47
    # getter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->reminders:Ljava/util/List;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$1000(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 49
    :goto_0
    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->reminders:Ljava/util/List;

    .line 50
    # getter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->allDayReminders:Ljava/util/List;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$1100(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 52
    :goto_1
    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->allDayReminders:Ljava/util/List;

    .line 53
    # getter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isDailyAgendaEnabled:Z
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$1200(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isDailyAgendaEnabled:Z

    .line 54
    # getter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isFindTimeSupported:Z
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$1300(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isFindTimeSupported:Z

    .line 55
    # getter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->defaultEventDuration:I
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$1400(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->defaultEventDuration:I

    .line 56
    return-void

    .line 49
    :cond_0
    # getter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->reminders:Ljava/util/List;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$1000(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_1
    # getter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->allDayReminders:Ljava/util/List;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$1100(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$1;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;-><init>(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)V

    return-void
.end method

.method public static builderFrom(Lcom/google/calendar/v2/client/service/api/calendars/Calendar;)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;
    .locals 2

    .prologue
    .line 148
    check-cast p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;

    .line 149
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;

    invoke-direct {v0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;-><init>()V

    .line 150
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->getCalendarListEntryProto()Ljava/lang/Object;

    move-result-object v1

    # setter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->calendarListEntryProto:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$402(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->getKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v1

    # setter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;
    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$002(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Lcom/google/calendar/v2/client/service/api/common/CalendarKey;)Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    .line 152
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->getForegroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v1

    # setter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->foregroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;
    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$602(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Lcom/google/calendar/v2/client/service/api/common/Color;)Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 153
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->getBackgroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v1

    # setter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->backgroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;
    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$502(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Lcom/google/calendar/v2/client/service/api/common/Color;)Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 154
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->getAccessRole()Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    move-result-object v1

    # setter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->accessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;
    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$202(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;)Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    .line 155
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isPrimary()Z

    move-result v1

    # setter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isPrimary:Z
    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$102(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Z)Z

    .line 156
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isSelected()Z

    move-result v1

    # setter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isSelected:Z
    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$702(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Z)Z

    .line 157
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isSharedWithOthers()Z

    move-result v1

    # setter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isSharedWithOthers:Z
    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$802(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Z)Z

    .line 158
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$902(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->getTimedEventReminders()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->reminders:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$1002(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Ljava/util/List;)Ljava/util/List;

    .line 160
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->getAllDayReminders()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->allDayReminders:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$1102(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Ljava/util/List;)Ljava/util/List;

    .line 161
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isDailyAgendaEnabled()Z

    move-result v1

    # setter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isDailyAgendaEnabled:Z
    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$1202(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Z)Z

    .line 162
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isFindTimeSupported()Z

    move-result v1

    # setter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isFindTimeSupported:Z
    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$1302(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Z)Z

    .line 163
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->getType()Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    move-result-object v1

    # setter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->calendarType:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;
    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$302(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;)Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    .line 164
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->getDefaultEventDuration()I

    move-result v1

    # setter for: Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->defaultEventDuration:I
    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->access$1402(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;I)I

    .line 165
    return-object v0
.end method


# virtual methods
.method public bridge synthetic canChangeMetadata()Z
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->canChangeMetadata()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic canUnsubscribe()Z
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->canUnsubscribe()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    if-ne p0, p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    instance-of v2, p1, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;

    if-nez v2, :cond_2

    move v0, v1

    .line 118
    goto :goto_0

    .line 120
    :cond_2
    check-cast p1, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->baseEquals(Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->name:Ljava/lang/String;

    .line 123
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isSelected:Z

    iget-boolean v3, p1, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isSelected:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isSharedWithOthers:Z

    iget-boolean v3, p1, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isSharedWithOthers:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->backgroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->backgroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 126
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->foregroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->foregroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 127
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->reminders:Ljava/util/List;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->reminders:Ljava/util/List;

    .line 128
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->allDayReminders:Ljava/util/List;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->allDayReminders:Ljava/util/List;

    .line 129
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isDailyAgendaEnabled:Z

    .line 130
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isDailyAgendaEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getAccessRole()Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->getAccessRole()Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    move-result-object v0

    return-object v0
.end method

.method public getAllDayReminders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->allDayReminders:Ljava/util/List;

    return-object v0
.end method

.method public getBackgroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->backgroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0
.end method

.method public getCalendarListEntryProto()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->calendarListEntryProto:Ljava/lang/Object;

    return-object v0
.end method

.method public getDefaultEventDuration()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->defaultEventDuration:I

    return v0
.end method

.method public getForegroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->foregroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0
.end method

.method public bridge synthetic getKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->getKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTimedEventReminders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->reminders:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getType()Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->getType()Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDailyAgendaEnabled()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isDailyAgendaEnabled:Z

    return v0
.end method

.method public bridge synthetic isEditable()Z
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->isEditable()Z

    move-result v0

    return v0
.end method

.method public isFindTimeSupported()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isFindTimeSupported:Z

    return v0
.end method

.method public bridge synthetic isInDefaultDailyAgendaSet()Z
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->isInDefaultDailyAgendaSet()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPrimary()Z
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarBase;->isPrimary()Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isSelected:Z

    return v0
.end method

.method public isSharedWithOthers()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isSharedWithOthers:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->baseToStringHelper()Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Name"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->name:Ljava/lang/String;

    .line 136
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isSelected"

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isSelected:Z

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isSharedWithOthers"

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isSharedWithOthers:Z

    .line 138
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "backgroundColor"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->backgroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "foregroundColor"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->foregroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "reminders"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->reminders:Ljava/util/List;

    .line 141
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "allDayReminders"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->allDayReminders:Ljava/util/List;

    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "isDailyAgendaEnabled"

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->isDailyAgendaEnabled:Z

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    return-object v0
.end method
