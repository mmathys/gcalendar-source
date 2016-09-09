.class synthetic Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController$1;
.super Ljava/lang/Object;
.source "EventNotificationEditSegmentController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$calendar$v2$client$service$api$common$Reminder$DeliveryMethod:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 333
    invoke-static {}, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->values()[Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController$1;->$SwitchMap$com$google$calendar$v2$client$service$api$common$Reminder$DeliveryMethod:[I

    :try_start_0
    sget-object v0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController$1;->$SwitchMap$com$google$calendar$v2$client$service$api$common$Reminder$DeliveryMethod:[I

    sget-object v1, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->EMAIL:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/calendar/newapi/segment/notification/EventNotificationEditSegmentController$1;->$SwitchMap$com$google$calendar$v2$client$service$api$common$Reminder$DeliveryMethod:[I

    sget-object v1, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->SMS:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
