.class Lcom/android/calendar/AllInOneCalendarActivity$13;
.super Ljava/lang/Object;
.source "AllInOneCalendarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AllInOneCalendarActivity;->maybeAddCreatePromos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneCalendarActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity;)V
    .locals 0

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$13;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1095
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$13;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    .line 1097
    invoke-static {v1}, Lcom/android/calendar/FullScreenManager;->getInstance(Landroid/app/Activity;)Lcom/android/calendar/FullScreenManager;

    move-result-object v2

    .line 1098
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$13;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mPromos:[Lcom/android/calendar/timely/BottomPromo;
    invoke-static {v3}, Lcom/android/calendar/AllInOneCalendarActivity;->access$2900(Lcom/android/calendar/AllInOneCalendarActivity;)[Lcom/android/calendar/timely/BottomPromo;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1099
    iget-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$13;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mPromos:[Lcom/android/calendar/timely/BottomPromo;
    invoke-static {v3}, Lcom/android/calendar/AllInOneCalendarActivity;->access$2900(Lcom/android/calendar/AllInOneCalendarActivity;)[Lcom/android/calendar/timely/BottomPromo;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v1, v3}, Lcom/android/calendar/FullScreenManager;->addView(Landroid/app/Activity;Landroid/view/View;)V

    .line 1098
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$13;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # invokes: Lcom/android/calendar/AllInOneCalendarActivity;->maybeUpdatePromoStates()V
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$3000(Lcom/android/calendar/AllInOneCalendarActivity;)V

    .line 1102
    return-void
.end method
