.class synthetic Lcom/android/calendar/event/data/EventEditManager$7;
.super Ljava/lang/Object;
.source "EventEditManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/data/EventEditManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$calendar$v2$client$service$api$events$Attendee$Response:[I

.field static final synthetic $SwitchMap$com$google$calendar$v2$client$service$api$events$Availability:[I

.field static final synthetic $SwitchMap$com$google$calendar$v2$client$service$api$events$Visibility:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1312
    invoke-static {}, Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;->values()[Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/calendar/event/data/EventEditManager$7;->$SwitchMap$com$google$calendar$v2$client$service$api$events$Attendee$Response:[I

    :try_start_0
    sget-object v0, Lcom/android/calendar/event/data/EventEditManager$7;->$SwitchMap$com$google$calendar$v2$client$service$api$events$Attendee$Response:[I

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;->ACCEPTED:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/calendar/event/data/EventEditManager$7;->$SwitchMap$com$google$calendar$v2$client$service$api$events$Attendee$Response:[I

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;->DECLINED:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/calendar/event/data/EventEditManager$7;->$SwitchMap$com$google$calendar$v2$client$service$api$events$Attendee$Response:[I

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;->TENTATIVE:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/calendar/event/data/EventEditManager$7;->$SwitchMap$com$google$calendar$v2$client$service$api$events$Attendee$Response:[I

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;->NEEDS_ACTION:Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    .line 1214
    :goto_3
    invoke-static {}, Lcom/google/calendar/v2/client/service/api/events/Visibility;->values()[Lcom/google/calendar/v2/client/service/api/events/Visibility;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/calendar/event/data/EventEditManager$7;->$SwitchMap$com$google$calendar$v2$client$service$api$events$Visibility:[I

    :try_start_4
    sget-object v0, Lcom/android/calendar/event/data/EventEditManager$7;->$SwitchMap$com$google$calendar$v2$client$service$api$events$Visibility:[I

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Visibility;->PUBLIC:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/Visibility;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/calendar/event/data/EventEditManager$7;->$SwitchMap$com$google$calendar$v2$client$service$api$events$Visibility:[I

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Visibility;->PRIVATE:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/Visibility;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/calendar/event/data/EventEditManager$7;->$SwitchMap$com$google$calendar$v2$client$service$api$events$Visibility:[I

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Visibility;->CONFIDENTIAL:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/Visibility;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v0, Lcom/android/calendar/event/data/EventEditManager$7;->$SwitchMap$com$google$calendar$v2$client$service$api$events$Visibility:[I

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Visibility;->SECRET:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/Visibility;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    .line 1196
    :goto_7
    invoke-static {}, Lcom/google/calendar/v2/client/service/api/events/Availability;->values()[Lcom/google/calendar/v2/client/service/api/events/Availability;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/calendar/event/data/EventEditManager$7;->$SwitchMap$com$google$calendar$v2$client$service$api$events$Availability:[I

    :try_start_8
    sget-object v0, Lcom/android/calendar/event/data/EventEditManager$7;->$SwitchMap$com$google$calendar$v2$client$service$api$events$Availability:[I

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Availability;->AVAILABLE:Lcom/google/calendar/v2/client/service/api/events/Availability;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/Availability;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    .line 1214
    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    .line 1312
    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_0
.end method
