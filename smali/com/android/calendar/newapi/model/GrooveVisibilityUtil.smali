.class public Lcom/android/calendar/newapi/model/GrooveVisibilityUtil;
.super Ljava/lang/Object;
.source "GrooveVisibilityUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/android/calendar/newapi/model/GrooveVisibilityUtil;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/newapi/model/GrooveVisibilityUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromHabitVisibility(I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 17
    packed-switch p0, :pswitch_data_0

    .line 25
    sget-object v1, Lcom/android/calendar/newapi/model/GrooveVisibilityUtil;->TAG:Ljava/lang/String;

    const-string v2, "Unsupported visibility."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 26
    :goto_0
    :pswitch_0
    return v0

    .line 21
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 23
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static toHabitVisibility(I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 32
    packed-switch p0, :pswitch_data_0

    .line 40
    sget-object v1, Lcom/android/calendar/newapi/model/GrooveVisibilityUtil;->TAG:Ljava/lang/String;

    const-string v2, "Unsupported visibility."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 41
    :goto_0
    :pswitch_0
    return v0

    .line 36
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 38
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
