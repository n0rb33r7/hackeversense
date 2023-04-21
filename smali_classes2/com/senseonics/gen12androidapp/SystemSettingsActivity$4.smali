.class Lcom/senseonics/gen12androidapp/SystemSettingsActivity$4;
.super Ljava/lang/Object;
.source "SystemSettingsActivity.java"

# interfaces
.implements Lcom/senseonics/util/CustomEditText$EditTextImeBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->addTransmitterNameView()V
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

    .line 229
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$4;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImeBack(Lcom/senseonics/util/CustomEditText;Ljava/lang/String;)V
    .locals 0

    .line 233
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$4;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->-$$Nest$mupdateTransmitterName(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)V

    return-void
.end method
