.class Lcom/android/calendar/timely/settings/CalendarSettingsActivity$2;
.super Ljava/lang/Object;
.source "CalendarSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/settings/CalendarSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/settings/CalendarSettingsActivity;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$2;->this$0:Lcom/android/calendar/timely/settings/CalendarSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$2;->this$0:Lcom/android/calendar/timely/settings/CalendarSettingsActivity;

    invoke-virtual {v0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->finish()V

    .line 240
    return-void
.end method
