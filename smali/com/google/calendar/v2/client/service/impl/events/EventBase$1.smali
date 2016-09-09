.class synthetic Lcom/google/calendar/v2/client/service/impl/events/EventBase$1;
.super Ljava/lang/Object;
.source "EventBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/impl/events/EventBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$calendar$v2$client$service$api$calendars$CalendarType:[I

.field static final synthetic $SwitchMap$com$google$calendar$v2$client$service$api$events$EventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lcom/google/calendar/v2/client/service/api/events/EventType;->values()[Lcom/google/calendar/v2/client/service/api/events/EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/calendar/v2/client/service/impl/events/EventBase$1;->$SwitchMap$com$google$calendar$v2$client$service$api$events$EventType:[I

    :try_start_0
    sget-object v0, Lcom/google/calendar/v2/client/service/impl/events/EventBase$1;->$SwitchMap$com$google$calendar$v2$client$service$api$events$EventType:[I

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/EventType;->BIRTHDAY:Lcom/google/calendar/v2/client/service/api/events/EventType;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/calendar/v2/client/service/impl/events/EventBase$1;->$SwitchMap$com$google$calendar$v2$client$service$api$events$EventType:[I

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/EventType;->HOLIDAY:Lcom/google/calendar/v2/client/service/api/events/EventType;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    .line 29
    :goto_1
    invoke-static {}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->values()[Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/calendar/v2/client/service/impl/events/EventBase$1;->$SwitchMap$com$google$calendar$v2$client$service$api$calendars$CalendarType:[I

    :try_start_2
    sget-object v0, Lcom/google/calendar/v2/client/service/impl/events/EventBase$1;->$SwitchMap$com$google$calendar$v2$client$service$api$calendars$CalendarType:[I

    sget-object v1, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->BIRTHDAY:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/google/calendar/v2/client/service/impl/events/EventBase$1;->$SwitchMap$com$google$calendar$v2$client$service$api$calendars$CalendarType:[I

    sget-object v1, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->HOLIDAY:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    .line 47
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
