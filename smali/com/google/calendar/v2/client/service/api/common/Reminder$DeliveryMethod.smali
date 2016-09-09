.class public final enum Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;
.super Ljava/lang/Enum;
.source "Reminder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/api/common/Reminder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeliveryMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

.field public static final enum ALERT:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

.field public static final enum EMAIL:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

.field public static final enum SMS:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    const-string v1, "ALERT"

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->ALERT:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    .line 24
    new-instance v0, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v3}, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->EMAIL:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    .line 28
    new-instance v0, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v4}, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->SMS:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    sget-object v1, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->ALERT:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->EMAIL:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->SMS:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->$VALUES:[Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    return-object v0
.end method

.method public static values()[Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->$VALUES:[Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    invoke-virtual {v0}, [Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    return-object v0
.end method
