.class Lcom/android/calendar/event/CustomNotificationDialog$2;
.super Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;
.source "CustomNotificationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/CustomNotificationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/CustomNotificationDialog;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/CustomNotificationDialog;)V
    .locals 1

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/calendar/event/CustomNotificationDialog$2;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;-><init>(Lcom/android/calendar/event/CustomNotificationDialog;Lcom/android/calendar/event/CustomNotificationDialog$1;)V

    return-void
.end method


# virtual methods
.method protected getViewText(IIZ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$2;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mMethodLabels:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/calendar/event/CustomNotificationDialog;->access$500(Lcom/android/calendar/event/CustomNotificationDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
