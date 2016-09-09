.class Lcom/android/calendar/timely/settings/CalendarSettingsActivity$1;
.super Landroid/content/AsyncQueryHandler;
.source "CalendarSettingsActivity.java"


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
.method constructor <init>(Lcom/android/calendar/timely/settings/CalendarSettingsActivity;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$1;->this$0:Lcom/android/calendar/timely/settings/CalendarSettingsActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method
