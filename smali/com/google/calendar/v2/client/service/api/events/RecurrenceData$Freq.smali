.class public final enum Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;
.super Ljava/lang/Enum;
.source "RecurrenceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/api/events/RecurrenceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Freq"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

.field public static final enum COMPLEX:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

.field public static final enum DAILY:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

.field public static final enum MONTHLY:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

.field public static final enum UNSUPPORTED:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

.field public static final enum WEEKLY:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

.field public static final enum YEARLY:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 209
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    const-string v1, "DAILY"

    invoke-direct {v0, v1, v3}, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->DAILY:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    .line 210
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    const-string v1, "WEEKLY"

    invoke-direct {v0, v1, v4}, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->WEEKLY:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    .line 211
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    const-string v1, "MONTHLY"

    invoke-direct {v0, v1, v5}, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->MONTHLY:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    .line 212
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    const-string v1, "YEARLY"

    invoke-direct {v0, v1, v6}, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->YEARLY:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    .line 214
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    const-string v1, "COMPLEX"

    invoke-direct {v0, v1, v7}, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->COMPLEX:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    .line 216
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    const-string v1, "UNSUPPORTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->UNSUPPORTED:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    .line 208
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->DAILY:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->WEEKLY:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->MONTHLY:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->YEARLY:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->COMPLEX:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->UNSUPPORTED:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->$VALUES:[Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

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
    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;
    .locals 1

    .prologue
    .line 208
    const-class v0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    return-object v0
.end method

.method public static values()[Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->$VALUES:[Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    invoke-virtual {v0}, [Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    return-object v0
.end method
