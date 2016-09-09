.class public final enum Lcom/google/calendar/v2/client/service/api/time/Month;
.super Ljava/lang/Enum;
.source "Month.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/calendar/v2/client/service/api/time/Month;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/calendar/v2/client/service/api/time/Month;

.field public static final enum APRIL:Lcom/google/calendar/v2/client/service/api/time/Month;

.field public static final enum AUGUST:Lcom/google/calendar/v2/client/service/api/time/Month;

.field public static final enum DECEMBER:Lcom/google/calendar/v2/client/service/api/time/Month;

.field public static final enum FEBRUARY:Lcom/google/calendar/v2/client/service/api/time/Month;

.field public static final enum JANUARY:Lcom/google/calendar/v2/client/service/api/time/Month;

.field public static final enum JULY:Lcom/google/calendar/v2/client/service/api/time/Month;

.field public static final enum JUNE:Lcom/google/calendar/v2/client/service/api/time/Month;

.field public static final enum MARCH:Lcom/google/calendar/v2/client/service/api/time/Month;

.field public static final enum MAY:Lcom/google/calendar/v2/client/service/api/time/Month;

.field public static final enum NOVEMBER:Lcom/google/calendar/v2/client/service/api/time/Month;

.field public static final enum OCTOBER:Lcom/google/calendar/v2/client/service/api/time/Month;

.field public static final enum SEPTEMBER:Lcom/google/calendar/v2/client/service/api/time/Month;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 10
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Month;

    const-string v1, "JANUARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/google/calendar/v2/client/service/api/time/Month;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->JANUARY:Lcom/google/calendar/v2/client/service/api/time/Month;

    .line 11
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Month;

    const-string v1, "FEBRUARY"

    invoke-direct {v0, v1, v4, v5}, Lcom/google/calendar/v2/client/service/api/time/Month;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->FEBRUARY:Lcom/google/calendar/v2/client/service/api/time/Month;

    .line 12
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Month;

    const-string v1, "MARCH"

    invoke-direct {v0, v1, v5, v6}, Lcom/google/calendar/v2/client/service/api/time/Month;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->MARCH:Lcom/google/calendar/v2/client/service/api/time/Month;

    .line 13
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Month;

    const-string v1, "APRIL"

    invoke-direct {v0, v1, v6, v7}, Lcom/google/calendar/v2/client/service/api/time/Month;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->APRIL:Lcom/google/calendar/v2/client/service/api/time/Month;

    .line 14
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Month;

    const-string v1, "MAY"

    invoke-direct {v0, v1, v7, v8}, Lcom/google/calendar/v2/client/service/api/time/Month;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->MAY:Lcom/google/calendar/v2/client/service/api/time/Month;

    .line 15
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Month;

    const-string v1, "JUNE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/google/calendar/v2/client/service/api/time/Month;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->JUNE:Lcom/google/calendar/v2/client/service/api/time/Month;

    .line 16
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Month;

    const-string v1, "JULY"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/calendar/v2/client/service/api/time/Month;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->JULY:Lcom/google/calendar/v2/client/service/api/time/Month;

    .line 17
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Month;

    const-string v1, "AUGUST"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/calendar/v2/client/service/api/time/Month;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->AUGUST:Lcom/google/calendar/v2/client/service/api/time/Month;

    .line 18
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Month;

    const-string v1, "SEPTEMBER"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/google/calendar/v2/client/service/api/time/Month;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->SEPTEMBER:Lcom/google/calendar/v2/client/service/api/time/Month;

    .line 19
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Month;

    const-string v1, "OCTOBER"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/google/calendar/v2/client/service/api/time/Month;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->OCTOBER:Lcom/google/calendar/v2/client/service/api/time/Month;

    .line 20
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Month;

    const-string v1, "NOVEMBER"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/google/calendar/v2/client/service/api/time/Month;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->NOVEMBER:Lcom/google/calendar/v2/client/service/api/time/Month;

    .line 21
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Month;

    const-string v1, "DECEMBER"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/google/calendar/v2/client/service/api/time/Month;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->DECEMBER:Lcom/google/calendar/v2/client/service/api/time/Month;

    .line 9
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/calendar/v2/client/service/api/time/Month;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/calendar/v2/client/service/api/time/Month;->JANUARY:Lcom/google/calendar/v2/client/service/api/time/Month;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/calendar/v2/client/service/api/time/Month;->FEBRUARY:Lcom/google/calendar/v2/client/service/api/time/Month;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/calendar/v2/client/service/api/time/Month;->MARCH:Lcom/google/calendar/v2/client/service/api/time/Month;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/calendar/v2/client/service/api/time/Month;->APRIL:Lcom/google/calendar/v2/client/service/api/time/Month;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/calendar/v2/client/service/api/time/Month;->MAY:Lcom/google/calendar/v2/client/service/api/time/Month;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/calendar/v2/client/service/api/time/Month;->JUNE:Lcom/google/calendar/v2/client/service/api/time/Month;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/google/calendar/v2/client/service/api/time/Month;->JULY:Lcom/google/calendar/v2/client/service/api/time/Month;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/calendar/v2/client/service/api/time/Month;->AUGUST:Lcom/google/calendar/v2/client/service/api/time/Month;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/calendar/v2/client/service/api/time/Month;->SEPTEMBER:Lcom/google/calendar/v2/client/service/api/time/Month;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/calendar/v2/client/service/api/time/Month;->OCTOBER:Lcom/google/calendar/v2/client/service/api/time/Month;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/calendar/v2/client/service/api/time/Month;->NOVEMBER:Lcom/google/calendar/v2/client/service/api/time/Month;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/calendar/v2/client/service/api/time/Month;->DECEMBER:Lcom/google/calendar/v2/client/service/api/time/Month;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->$VALUES:[Lcom/google/calendar/v2/client/service/api/time/Month;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/google/calendar/v2/client/service/api/time/Month;->id:I

    .line 27
    return-void
.end method

.method public static fromInt(I)Lcom/google/calendar/v2/client/service/api/time/Month;
    .locals 1

    .prologue
    .line 35
    packed-switch p0, :pswitch_data_0

    .line 49
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 36
    :pswitch_0
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->JANUARY:Lcom/google/calendar/v2/client/service/api/time/Month;

    goto :goto_0

    .line 37
    :pswitch_1
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->FEBRUARY:Lcom/google/calendar/v2/client/service/api/time/Month;

    goto :goto_0

    .line 38
    :pswitch_2
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->MARCH:Lcom/google/calendar/v2/client/service/api/time/Month;

    goto :goto_0

    .line 39
    :pswitch_3
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->APRIL:Lcom/google/calendar/v2/client/service/api/time/Month;

    goto :goto_0

    .line 40
    :pswitch_4
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->MAY:Lcom/google/calendar/v2/client/service/api/time/Month;

    goto :goto_0

    .line 41
    :pswitch_5
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->JUNE:Lcom/google/calendar/v2/client/service/api/time/Month;

    goto :goto_0

    .line 42
    :pswitch_6
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->JULY:Lcom/google/calendar/v2/client/service/api/time/Month;

    goto :goto_0

    .line 43
    :pswitch_7
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->AUGUST:Lcom/google/calendar/v2/client/service/api/time/Month;

    goto :goto_0

    .line 44
    :pswitch_8
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->SEPTEMBER:Lcom/google/calendar/v2/client/service/api/time/Month;

    goto :goto_0

    .line 45
    :pswitch_9
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->OCTOBER:Lcom/google/calendar/v2/client/service/api/time/Month;

    goto :goto_0

    .line 46
    :pswitch_a
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->NOVEMBER:Lcom/google/calendar/v2/client/service/api/time/Month;

    goto :goto_0

    .line 47
    :pswitch_b
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->DECEMBER:Lcom/google/calendar/v2/client/service/api/time/Month;

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/time/Month;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/google/calendar/v2/client/service/api/time/Month;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/Month;

    return-object v0
.end method

.method public static values()[Lcom/google/calendar/v2/client/service/api/time/Month;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/Month;->$VALUES:[Lcom/google/calendar/v2/client/service/api/time/Month;

    invoke-virtual {v0}, [Lcom/google/calendar/v2/client/service/api/time/Month;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/calendar/v2/client/service/api/time/Month;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Month;->id:I

    return v0
.end method
