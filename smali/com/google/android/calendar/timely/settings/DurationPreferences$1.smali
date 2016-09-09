.class Lcom/google/android/calendar/timely/settings/DurationPreferences$1;
.super Ljava/lang/Object;
.source "DurationPreferences.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/settings/DurationPreferences;->prepareViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/settings/DurationPreferences;

.field final synthetic val$account:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/settings/DurationPreferences;Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$1;->this$0:Lcom/google/android/calendar/timely/settings/DurationPreferences;

    iput-object p2, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$1;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$1;->this$0:Lcom/google/android/calendar/timely/settings/DurationPreferences;

    # getter for: Lcom/google/android/calendar/timely/settings/DurationPreferences;->mSpinnerIntegerValues:[I
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/DurationPreferences;->access$000(Lcom/google/android/calendar/timely/settings/DurationPreferences;)[I

    move-result-object v0

    aget v1, v0, p3

    .line 201
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$1;->this$0:Lcom/google/android/calendar/timely/settings/DurationPreferences;

    # getter for: Lcom/google/android/calendar/timely/settings/DurationPreferences;->mAccountsInfo:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/DurationPreferences;->access$100(Lcom/google/android/calendar/timely/settings/DurationPreferences;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$1;->val$account:Landroid/accounts/Account;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$1;->this$0:Lcom/google/android/calendar/timely/settings/DurationPreferences;

    # getter for: Lcom/google/android/calendar/timely/settings/DurationPreferences;->mAccountsInfo:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/DurationPreferences;->access$100(Lcom/google/android/calendar/timely/settings/DurationPreferences;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/DurationPreferences$1;->val$account:Landroid/accounts/Account;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 209
    return-void
.end method
