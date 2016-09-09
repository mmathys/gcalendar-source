.class public final enum Lcom/google/calendar/v2/client/service/api/events/InstanceType;
.super Ljava/lang/Enum;
.source "InstanceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/calendar/v2/client/service/api/events/InstanceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/calendar/v2/client/service/api/events/InstanceType;

.field public static final enum INSTANCE:Lcom/google/calendar/v2/client/service/api/events/InstanceType;

.field public static final enum LOCAL_PHANTOM:Lcom/google/calendar/v2/client/service/api/events/InstanceType;

.field public static final enum REMOTE_PHANTOM:Lcom/google/calendar/v2/client/service/api/events/InstanceType;

.field public static final enum REMOTE_PHANTOM_TOMBSTONE:Lcom/google/calendar/v2/client/service/api/events/InstanceType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/events/InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/InstanceType;->INSTANCE:Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    .line 10
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    const-string v1, "REMOTE_PHANTOM"

    invoke-direct {v0, v1, v3}, Lcom/google/calendar/v2/client/service/api/events/InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/InstanceType;->REMOTE_PHANTOM:Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    .line 12
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    const-string v1, "REMOTE_PHANTOM_TOMBSTONE"

    invoke-direct {v0, v1, v4}, Lcom/google/calendar/v2/client/service/api/events/InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/InstanceType;->REMOTE_PHANTOM_TOMBSTONE:Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    .line 14
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    const-string v1, "LOCAL_PHANTOM"

    invoke-direct {v0, v1, v5}, Lcom/google/calendar/v2/client/service/api/events/InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/InstanceType;->LOCAL_PHANTOM:Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/InstanceType;->INSTANCE:Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/InstanceType;->REMOTE_PHANTOM:Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/InstanceType;->REMOTE_PHANTOM_TOMBSTONE:Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/InstanceType;->LOCAL_PHANTOM:Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/InstanceType;->$VALUES:[Lcom/google/calendar/v2/client/service/api/events/InstanceType;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/InstanceType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    return-object v0
.end method

.method public static values()[Lcom/google/calendar/v2/client/service/api/events/InstanceType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/InstanceType;->$VALUES:[Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    invoke-virtual {v0}, [Lcom/google/calendar/v2/client/service/api/events/InstanceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    return-object v0
.end method
