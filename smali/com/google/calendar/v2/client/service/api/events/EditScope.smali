.class public final enum Lcom/google/calendar/v2/client/service/api/events/EditScope;
.super Ljava/lang/Enum;
.source "EditScope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/calendar/v2/client/service/api/events/EditScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/calendar/v2/client/service/api/events/EditScope;

.field public static final enum FOLLOWING:Lcom/google/calendar/v2/client/service/api/events/EditScope;

.field public static final enum ONE:Lcom/google/calendar/v2/client/service/api/events/EditScope;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/EditScope;

    const-string v1, "ONE"

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/events/EditScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/EditScope;->ONE:Lcom/google/calendar/v2/client/service/api/events/EditScope;

    .line 9
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/EditScope;

    const-string v1, "FOLLOWING"

    invoke-direct {v0, v1, v3}, Lcom/google/calendar/v2/client/service/api/events/EditScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/EditScope;->FOLLOWING:Lcom/google/calendar/v2/client/service/api/events/EditScope;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/calendar/v2/client/service/api/events/EditScope;

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/EditScope;->ONE:Lcom/google/calendar/v2/client/service/api/events/EditScope;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/EditScope;->FOLLOWING:Lcom/google/calendar/v2/client/service/api/events/EditScope;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/EditScope;->$VALUES:[Lcom/google/calendar/v2/client/service/api/events/EditScope;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/EditScope;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/google/calendar/v2/client/service/api/events/EditScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/EditScope;

    return-object v0
.end method

.method public static values()[Lcom/google/calendar/v2/client/service/api/events/EditScope;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/EditScope;->$VALUES:[Lcom/google/calendar/v2/client/service/api/events/EditScope;

    invoke-virtual {v0}, [Lcom/google/calendar/v2/client/service/api/events/EditScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/calendar/v2/client/service/api/events/EditScope;

    return-object v0
.end method
