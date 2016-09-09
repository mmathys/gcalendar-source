.class Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$2;
.super Ljava/lang/Object;
.source "WhatsNewFactoryImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->processAccountChanges(Landroid/app/Activity;[Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$googleAccountsToAckSmartmail:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$2;->this$0:Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;

    iput-object p2, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$2;->val$googleAccountsToAckSmartmail:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$2;->this$0:Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;

    iget-object v1, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$2;->val$googleAccountsToAckSmartmail:Ljava/util/ArrayList;

    # invokes: Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->enrollIntoTimely(Landroid/content/Context;Ljava/util/List;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->access$300(Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;Landroid/content/Context;Ljava/util/List;)V

    .line 178
    return-void
.end method
