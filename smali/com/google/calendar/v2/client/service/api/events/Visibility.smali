.class public final enum Lcom/google/calendar/v2/client/service/api/events/Visibility;
.super Ljava/lang/Enum;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/calendar/v2/client/service/api/events/Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/calendar/v2/client/service/api/events/Visibility;

.field public static final enum CONFIDENTIAL:Lcom/google/calendar/v2/client/service/api/events/Visibility;

.field public static final enum DEFAULT:Lcom/google/calendar/v2/client/service/api/events/Visibility;

.field public static final enum PRIVATE:Lcom/google/calendar/v2/client/service/api/events/Visibility;

.field public static final enum PUBLIC:Lcom/google/calendar/v2/client/service/api/events/Visibility;

.field public static final enum SECRET:Lcom/google/calendar/v2/client/service/api/events/Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/events/Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;->DEFAULT:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    .line 8
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v1, v3}, Lcom/google/calendar/v2/client/service/api/events/Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;->PUBLIC:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    .line 9
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1, v4}, Lcom/google/calendar/v2/client/service/api/events/Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;->PRIVATE:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    .line 10
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;

    const-string v1, "CONFIDENTIAL"

    invoke-direct {v0, v1, v5}, Lcom/google/calendar/v2/client/service/api/events/Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;->CONFIDENTIAL:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    .line 11
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;

    const-string v1, "SECRET"

    invoke-direct {v0, v1, v6}, Lcom/google/calendar/v2/client/service/api/events/Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;->SECRET:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/calendar/v2/client/service/api/events/Visibility;

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Visibility;->DEFAULT:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Visibility;->PUBLIC:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Visibility;->PRIVATE:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Visibility;->CONFIDENTIAL:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Visibility;->SECRET:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;->$VALUES:[Lcom/google/calendar/v2/client/service/api/events/Visibility;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/Visibility;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;

    return-object v0
.end method

.method public static values()[Lcom/google/calendar/v2/client/service/api/events/Visibility;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;->$VALUES:[Lcom/google/calendar/v2/client/service/api/events/Visibility;

    invoke-virtual {v0}, [Lcom/google/calendar/v2/client/service/api/events/Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/calendar/v2/client/service/api/events/Visibility;

    return-object v0
.end method
