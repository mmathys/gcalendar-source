.class public Lcom/android/calendar/newapi/model/EventVisibilityUtil;
.super Ljava/lang/Object;
.source "EventVisibilityUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/android/calendar/newapi/model/EventVisibilityUtil;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/newapi/model/EventVisibilityUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromEventVisibility(I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 16
    packed-switch p0, :pswitch_data_0

    .line 24
    sget-object v1, Lcom/android/calendar/newapi/model/EventVisibilityUtil;->TAG:Ljava/lang/String;

    const-string v2, "Unsupported visibility."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 25
    :goto_0
    :pswitch_0
    return v0

    .line 20
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 22
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static toEventVisibility(I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 31
    packed-switch p0, :pswitch_data_0

    .line 39
    sget-object v1, Lcom/android/calendar/newapi/model/EventVisibilityUtil;->TAG:Ljava/lang/String;

    const-string v2, "Unsupported visibility."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 40
    :goto_0
    :pswitch_0
    return v0

    .line 35
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 37
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
