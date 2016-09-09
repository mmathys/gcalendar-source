.class public final enum Lcom/google/calendar/v2/client/service/api/time/Weekday;
.super Ljava/lang/Enum;
.source "Weekday.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/calendar/v2/client/service/api/time/Weekday;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/calendar/v2/client/service/api/time/Weekday;

.field public static final enum FRIDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

.field public static final enum MONDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

.field public static final enum SATURDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

.field public static final enum SUNDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

.field public static final enum THURSDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

.field public static final enum TUESDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

.field public static final enum WEDNESDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;


# instance fields
.field private final calendarApiId:I

.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;

    const-string v1, "MONDAY"

    invoke-direct {v0, v1, v4, v5}, Lcom/google/calendar/v2/client/service/api/time/Weekday;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->MONDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    .line 10
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;

    const-string v1, "TUESDAY"

    invoke-direct {v0, v1, v5, v6}, Lcom/google/calendar/v2/client/service/api/time/Weekday;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->TUESDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    .line 11
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;

    const-string v1, "WEDNESDAY"

    invoke-direct {v0, v1, v6, v7}, Lcom/google/calendar/v2/client/service/api/time/Weekday;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->WEDNESDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    .line 12
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;

    const-string v1, "THURSDAY"

    invoke-direct {v0, v1, v7, v8}, Lcom/google/calendar/v2/client/service/api/time/Weekday;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->THURSDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    .line 13
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;

    const-string v1, "FRIDAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/google/calendar/v2/client/service/api/time/Weekday;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->FRIDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    .line 14
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;

    const-string v1, "SATURDAY"

    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/calendar/v2/client/service/api/time/Weekday;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->SATURDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    .line 15
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;

    const-string v1, "SUNDAY"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/calendar/v2/client/service/api/time/Weekday;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->SUNDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    .line 8
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/calendar/v2/client/service/api/time/Weekday;

    sget-object v1, Lcom/google/calendar/v2/client/service/api/time/Weekday;->MONDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/calendar/v2/client/service/api/time/Weekday;->TUESDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/calendar/v2/client/service/api/time/Weekday;->WEDNESDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/calendar/v2/client/service/api/time/Weekday;->THURSDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/calendar/v2/client/service/api/time/Weekday;->FRIDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/calendar/v2/client/service/api/time/Weekday;->SATURDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/calendar/v2/client/service/api/time/Weekday;->SUNDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->$VALUES:[Lcom/google/calendar/v2/client/service/api/time/Weekday;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p3}, Lcom/google/calendar/v2/client/service/api/time/Weekday;-><init>(Ljava/lang/String;III)V

    .line 22
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->id:I

    .line 25
    iput p4, p0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->calendarApiId:I

    .line 26
    return-void
.end method

.method public static fromCalendarApiId(I)Lcom/google/calendar/v2/client/service/api/time/Weekday;
    .locals 1

    .prologue
    .line 52
    packed-switch p0, :pswitch_data_0

    .line 61
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 53
    :pswitch_0
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->SUNDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    goto :goto_0

    .line 54
    :pswitch_1
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->MONDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    goto :goto_0

    .line 55
    :pswitch_2
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->TUESDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    goto :goto_0

    .line 56
    :pswitch_3
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->WEDNESDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    goto :goto_0

    .line 57
    :pswitch_4
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->THURSDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    goto :goto_0

    .line 58
    :pswitch_5
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->FRIDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    goto :goto_0

    .line 59
    :pswitch_6
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->SATURDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static fromInt(I)Lcom/google/calendar/v2/client/service/api/time/Weekday;
    .locals 1

    .prologue
    .line 34
    packed-switch p0, :pswitch_data_0

    .line 43
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 35
    :pswitch_0
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->MONDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    goto :goto_0

    .line 36
    :pswitch_1
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->TUESDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    goto :goto_0

    .line 37
    :pswitch_2
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->WEDNESDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    goto :goto_0

    .line 38
    :pswitch_3
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->THURSDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    goto :goto_0

    .line 39
    :pswitch_4
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->FRIDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    goto :goto_0

    .line 40
    :pswitch_5
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->SATURDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    goto :goto_0

    .line 41
    :pswitch_6
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->SUNDAY:Lcom/google/calendar/v2/client/service/api/time/Weekday;

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/time/Weekday;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;

    return-object v0
.end method

.method public static values()[Lcom/google/calendar/v2/client/service/api/time/Weekday;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->$VALUES:[Lcom/google/calendar/v2/client/service/api/time/Weekday;

    invoke-virtual {v0}, [Lcom/google/calendar/v2/client/service/api/time/Weekday;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/calendar/v2/client/service/api/time/Weekday;

    return-object v0
.end method


# virtual methods
.method public calendarApiIntValue()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->calendarApiId:I

    return v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Weekday;->id:I

    return v0
.end method
