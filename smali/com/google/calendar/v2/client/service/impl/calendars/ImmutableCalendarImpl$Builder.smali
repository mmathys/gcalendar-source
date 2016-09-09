.class public Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;
.super Ljava/lang/Object;
.source "ImmutableCalendarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private accessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

.field private allDayReminders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

.field private calendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

.field private calendarListEntryProto:Ljava/lang/Object;

.field private calendarType:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

.field private defaultEventDuration:I

.field private foregroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

.field private isDailyAgendaEnabled:Z

.field private isFindTimeSupported:Z

.field private isPrimary:Z

.field private isSelected:Z

.field private isSharedWithOthers:Z

.field private name:Ljava/lang/String;

.field private reminders:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    sget-object v0, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->READER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->accessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    return-void
.end method

.method static synthetic access$000(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Lcom/google/calendar/v2/client/service/api/common/CalendarKey;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Lcom/google/calendar/v2/client/service/api/common/CalendarKey;)Lcom/google/calendar/v2/client/service/api/common/CalendarKey;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isPrimary:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->reminders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->reminders:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Z)Z
    .locals 0

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isPrimary:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->allDayReminders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->allDayReminders:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isDailyAgendaEnabled:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Z)Z
    .locals 0

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isDailyAgendaEnabled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isFindTimeSupported:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Z)Z
    .locals 0

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isFindTimeSupported:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->defaultEventDuration:I

    return v0
.end method

.method static synthetic access$1402(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;I)I
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->defaultEventDuration:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->accessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;)Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->accessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->calendarType:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;)Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->calendarType:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->calendarListEntryProto:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->calendarListEntryProto:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->backgroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Lcom/google/calendar/v2/client/service/api/common/Color;)Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->backgroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->foregroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Lcom/google/calendar/v2/client/service/api/common/Color;)Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->foregroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isSelected:Z

    return v0
.end method

.method static synthetic access$702(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Z)Z
    .locals 0

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isSelected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isSharedWithOthers:Z

    return v0
.end method

.method static synthetic access$802(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Z)Z
    .locals 0

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isSharedWithOthers:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->name:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public build()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;-><init>(Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$1;)V

    return-object v0
.end method

.method public setAccessRole(Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->accessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    .line 227
    return-object p0
.end method

.method public setBackgroundColor(Lcom/google/calendar/v2/client/service/api/common/Color;)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->backgroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 201
    return-object p0
.end method

.method public setCalendarKey(Lcom/google/calendar/v2/client/service/api/common/CalendarKey;)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;
    .locals 1

    .prologue
    .line 205
    instance-of v0, p1, Lcom/google/calendar/v2/client/service/api/common/TemporaryCalendarKey;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 207
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    .line 208
    return-object p0

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCalendarType(Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->calendarType:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    .line 217
    return-object p0
.end method

.method public setDefaultEventDuration(I)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;
    .locals 0

    .prologue
    .line 282
    iput p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->defaultEventDuration:I

    .line 283
    return-object p0
.end method

.method public setIsFindTimeSupported(Z)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;
    .locals 0

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isFindTimeSupported:Z

    .line 257
    return-object p0
.end method

.method public setIsPrimary(Z)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;
    .locals 0

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isPrimary:Z

    .line 232
    return-object p0
.end method

.method public setIsSelected(Z)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;
    .locals 0

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isSelected:Z

    .line 237
    return-object p0
.end method

.method public setIsSharedWithOthers(Z)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;
    .locals 0

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->isSharedWithOthers:Z

    .line 242
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->name:Ljava/lang/String;

    .line 247
    return-object p0
.end method
