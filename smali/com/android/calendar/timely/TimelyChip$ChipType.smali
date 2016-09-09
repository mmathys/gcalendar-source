.class final enum Lcom/android/calendar/timely/TimelyChip$ChipType;
.super Ljava/lang/Enum;
.source "TimelyChip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/TimelyChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ChipType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/calendar/timely/TimelyChip$ChipType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/calendar/timely/TimelyChip$ChipType;

.field public static final enum ASSIST:Lcom/android/calendar/timely/TimelyChip$ChipType;

.field public static final enum ASSIST_INFO:Lcom/android/calendar/timely/TimelyChip$ChipType;

.field public static final enum DOUBLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

.field public static final enum SINGLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

.field public static final enum TRIPLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

.field public static final enum ZERO:Lcom/android/calendar/timely/TimelyChip$ChipType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    new-instance v0, Lcom/android/calendar/timely/TimelyChip$ChipType;

    const-string v1, "ZERO"

    invoke-direct {v0, v1, v3}, Lcom/android/calendar/timely/TimelyChip$ChipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->ZERO:Lcom/android/calendar/timely/TimelyChip$ChipType;

    new-instance v0, Lcom/android/calendar/timely/TimelyChip$ChipType;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v4}, Lcom/android/calendar/timely/TimelyChip$ChipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->SINGLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

    new-instance v0, Lcom/android/calendar/timely/TimelyChip$ChipType;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v5}, Lcom/android/calendar/timely/TimelyChip$ChipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->DOUBLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

    new-instance v0, Lcom/android/calendar/timely/TimelyChip$ChipType;

    const-string v1, "TRIPLE"

    invoke-direct {v0, v1, v6}, Lcom/android/calendar/timely/TimelyChip$ChipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->TRIPLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

    new-instance v0, Lcom/android/calendar/timely/TimelyChip$ChipType;

    const-string v1, "ASSIST"

    invoke-direct {v0, v1, v7}, Lcom/android/calendar/timely/TimelyChip$ChipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->ASSIST:Lcom/android/calendar/timely/TimelyChip$ChipType;

    new-instance v0, Lcom/android/calendar/timely/TimelyChip$ChipType;

    const-string v1, "ASSIST_INFO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/timely/TimelyChip$ChipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->ASSIST_INFO:Lcom/android/calendar/timely/TimelyChip$ChipType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/calendar/timely/TimelyChip$ChipType;

    sget-object v1, Lcom/android/calendar/timely/TimelyChip$ChipType;->ZERO:Lcom/android/calendar/timely/TimelyChip$ChipType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/calendar/timely/TimelyChip$ChipType;->SINGLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/calendar/timely/TimelyChip$ChipType;->DOUBLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/calendar/timely/TimelyChip$ChipType;->TRIPLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/calendar/timely/TimelyChip$ChipType;->ASSIST:Lcom/android/calendar/timely/TimelyChip$ChipType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/calendar/timely/TimelyChip$ChipType;->ASSIST_INFO:Lcom/android/calendar/timely/TimelyChip$ChipType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->$VALUES:[Lcom/android/calendar/timely/TimelyChip$ChipType;

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
    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/calendar/timely/TimelyChip$ChipType;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->$VALUES:[Lcom/android/calendar/timely/TimelyChip$ChipType;

    invoke-virtual {v0}, [Lcom/android/calendar/timely/TimelyChip$ChipType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/calendar/timely/TimelyChip$ChipType;

    return-object v0
.end method
