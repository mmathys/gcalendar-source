.class public Lcom/android/calendar/newapi/segment/notification/GrooveNotificationChoiceCreator;
.super Lcom/android/calendar/newapi/segment/common/IntegerChoiceCreator;
.source "GrooveNotificationChoiceCreator.java"


# static fields
.field public static final CUSTOM_CHOICE:Ljava/lang/Integer;

.field public static final NO_NOTIFICATION_CHOICE:Ljava/lang/Integer;


# instance fields
.field private final mCustomNotificationString:Ljava/lang/String;

.field private final mNoNotificationString:Ljava/lang/String;

.field private final mReminderUtils:Lcom/android/calendar/event/ReminderUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationChoiceCreator;->NO_NOTIFICATION_CHOICE:Ljava/lang/Integer;

    .line 24
    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationChoiceCreator;->CUSTOM_CHOICE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/calendar/event/ReminderUtils;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/common/IntegerChoiceCreator;-><init>()V

    .line 31
    sget v0, Lcom/android/calendar/R$string;->edit_no_notification:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationChoiceCreator;->mNoNotificationString:Ljava/lang/String;

    .line 32
    sget v0, Lcom/android/calendar/R$string;->edit_custom_notification:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationChoiceCreator;->mCustomNotificationString:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationChoiceCreator;->mReminderUtils:Lcom/android/calendar/event/ReminderUtils;

    .line 34
    return-void
.end method


# virtual methods
.method protected createFooter()Landroid/support/v4/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Landroid/support/v4/util/Pair;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationChoiceCreator;->mCustomNotificationString:Ljava/lang/String;

    sget-object v2, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationChoiceCreator;->CUSTOM_CHOICE:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createHeader()Landroid/support/v4/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Landroid/support/v4/util/Pair;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationChoiceCreator;->mNoNotificationString:Ljava/lang/String;

    sget-object v2, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationChoiceCreator;->NO_NOTIFICATION_CHOICE:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createLabel(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationChoiceCreator;->mReminderUtils:Lcom/android/calendar/event/ReminderUtils;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/ReminderUtils;->constructGrooveNotificationLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createLabel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationChoiceCreator;->createLabel(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createList(Ljava/util/ArrayList;Ljava/lang/Integer;)Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lcom/android/calendar/newapi/segment/common/IntegerChoiceCreator;->createList(Ljava/util/ArrayList;Ljava/lang/Object;)Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createList(Ljava/util/ArrayList;Ljava/lang/Object;)Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;
    .locals 1

    .prologue
    .line 21
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationChoiceCreator;->createList(Ljava/util/ArrayList;Ljava/lang/Integer;)Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;

    move-result-object v0

    return-object v0
.end method
