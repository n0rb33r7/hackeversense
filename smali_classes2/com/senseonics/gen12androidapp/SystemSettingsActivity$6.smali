.class Lcom/senseonics/gen12androidapp/SystemSettingsActivity$6;
.super Ljava/lang/Object;
.source "SystemSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEdited()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$6;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$6;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->-$$Nest$mhideProgressDialog(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)V

    return-void
.end method
